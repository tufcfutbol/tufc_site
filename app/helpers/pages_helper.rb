module PagesHelper

  require 'aws/s3'

  def getPictures(number)
     AWS::S3::Base.establish_connection!(
      :access_key_id => 'AKIAINVXMR3JMM62S2LQ',
      :secret_access_key => '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')
    tufcBucket = AWS::S3::Bucket.objects('tufcPictures')
    size = tufcBucket.size
    picturesArray = Array.new

    (1..number).each do |i|
      #add pictures to arrayArray
      num = rand(0..size)
      picturesArray.push(tufcBucket[num])
    end

    return picturesArray
  end




end

