class WilliamsSonomaWebPage
include PageObject

page_url 'http://www.williams-sonoma.com/'

link(:cookware, :href => 'http://www.williams-sonoma.com/shop/cookware/?cm_type=gnav')

link(:ovenware, :href => 'http://www.williams-sonoma.com/shop/cookware/cookware-ovenware/?cm_type=lnav')

link(:product, :text =>'Le Creuset Apple Tarte Tatin Pan')

button(:addtocart, :class => 'btn btn_addtobasket btn_addtobasket_add')

button(:checkout, :id => 'btn-checkout')

h1(:shoppingcart, :text => 'Shopping Cart')

text_field(:search, :id => 'search-field')

button(:quicklook, :xpath => '//*[@id="content"]/div[2]/ul/li[1]/div[1]/a[2]/span')

link(:producttocompare, :xpath => '//*[@id="content"]/div[2]/ul/li[1]/a/span')

h1(:producttonewlink, :xpath => '//*[@id="pip"]/div[1]/div[6]/div[2]/div[2]/h1')

@productcompare1
def clickoncookware
	self.cookware
end

def clickonovenware
	sleep(2)
	self.ovenware
end

def clickonproduct
	sleep(3)
	self.product
end

def addtocartproduct
	sleep(3)
	self.addtocart
end

def checkoutproduct
	sleep(2)
	self.checkout
end

def shoppingcartpage
	sleep(3)
	self.shoppingcart?
end

def searchforproduct product
	self.search = product
	sleep(3)
	@browser.send_keys :enter
end

def quicklookclick 
	sleep(3)
	self.quicklook
	self.producttocompare = self.producttocompare1
end

def compare 
	sleep(3)
	self.producttocompare1 == self.producttonewlink
end

/*def searchforproduct product
	self.search = product
	sleep(3)
	@browser.send_keys :enter
end

def tweet 
	sleep(3)
	self.producttocompare1 == self.producttonewlink
end*/
end