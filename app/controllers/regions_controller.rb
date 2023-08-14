class RegionsController < ApplicationController
  def new
    @region = Region.new
  end

  def create
    # render plain: params

    @region = params[:file_upload].tempfile


    data = File.open(@region)
    widgets = DBF::Table.new(data)
      binding.pry
    
    # widgets.find(:all, GNINMB: '0200') do |widget|
    # widgets.each do |widget|
    #   binding.pry
    #   region = Region.find_by(gni_region: widget.gninmb)

    #   if region.nil?
    #     Region.create(name_region: widget.name, gni_region: widget.gninmb, socr_region: widget.socr )
    #   else
    #     City.create(name_city: widget.name, gni_city: widget.gninmb, socr_city: widget.socr, region: region )
    #   end
    # end
    

    redirect_to root_path
  end
end

# {"NAME"=>"Адыгея", "SOCR"=>"Респ", "CODE"=>"0100000000000", "INDEX"=>"", "GNINMB"=>"0100", "UNO"=>"", "OCATD"=>"79000000000", "STATUS"=>"0"}
# [11] pry(#<RegionsController>)> single.attributes[:name]
