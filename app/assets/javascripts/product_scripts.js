function to_product_preview(product_div)
{
	var product_url = product_div.getElementsByTagName("h3");
	window.location.replace(product_url[0].getElementsByTagName("a")[0].href);
}