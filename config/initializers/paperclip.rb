Paperclip::Attachment.default_options[:url] = 'https://s3-us-west-2.amazonaws.com/tbsproductimages/'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
