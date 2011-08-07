module PagesHelper

  require 'aws/s3'

  def getPictures(number)
    picturesArray = Array.new
    t1 = Thread.new do

      AWS::S3::Base.establish_connection!(
        :access_key_id => 'AKIAINVXMR3JMM62S2LQ',
        :secret_access_key => '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')
      tufcBucket = AWS::S3::Bucket.objects('tufcPictures')
      size = tufcBucket.size


      (1..number).each do |i|
        #add pictures to arrayArray
        num = rand(size)
        picturesArray.push(tufcBucket[num])
      end
    end
    t1.join
    return picturesArray
  end




end

