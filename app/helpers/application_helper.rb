module ApplicationHelper

    def is_admin
        request.host == 'dev-drama.minami.im'
    end

    def signed_url_for(url)
        signer = Aws::CloudFront::UrlSigner.new(
          key_pair_id: "APKAILLI34P5LFBKPJ6A",
          private_key_path: (Rails.root + "app/assets/aws/cloudfront.pem")
        )
        
        duration = 60 * 60 * 3
        expires = (Time.now.getutc + duration).to_i.to_s
        policy = %Q/{"Statement":[{"Resource":"#{url}","Condition":{"DateLessThan":{"AWS:EpochTime":#{expires}}}}]}/
            
        signed_url = signer.signed_url(url, policy: policy )
    end

    def s3_image_url
        'https://d3qr8sq75zx535.cloudfront.net/image/'
    end
    
    def s3_video_url
        'https://d3qr8sq75zx535.cloudfront.net/video/'
    end

	def image_url (path)
		signed_url_for(s3_image_url + path + '.jpg')
    end
    
    def video_url (path)
		signed_url_for(s3_video_url + path + '.mp4')
	end
end
