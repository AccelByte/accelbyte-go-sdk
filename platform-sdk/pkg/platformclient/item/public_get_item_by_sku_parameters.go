// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package item

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewPublicGetItemBySkuParams creates a new PublicGetItemBySkuParams object
// with the default values initialized.
func NewPublicGetItemBySkuParams() *PublicGetItemBySkuParams {
	var ()
	return &PublicGetItemBySkuParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetItemBySkuParamsWithTimeout creates a new PublicGetItemBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetItemBySkuParamsWithTimeout(timeout time.Duration) *PublicGetItemBySkuParams {
	var ()
	return &PublicGetItemBySkuParams{

		timeout: timeout,
	}
}

// NewPublicGetItemBySkuParamsWithContext creates a new PublicGetItemBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetItemBySkuParamsWithContext(ctx context.Context) *PublicGetItemBySkuParams {
	var ()
	return &PublicGetItemBySkuParams{

		Context: ctx,
	}
}

// NewPublicGetItemBySkuParamsWithHTTPClient creates a new PublicGetItemBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetItemBySkuParamsWithHTTPClient(client *http.Client) *PublicGetItemBySkuParams {
	var ()
	return &PublicGetItemBySkuParams{
		HTTPClient: client,
	}
}

/*PublicGetItemBySkuParams contains all the parameters to send to the API endpoint
for the public get item by sku operation typically these are written to a http.Request
*/
type PublicGetItemBySkuParams struct {

	/*Language*/
	Language *string
	/*Namespace*/
	Namespace string
	/*Region*/
	Region *string
	/*Sku*/
	Sku string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithTimeout(timeout time.Duration) *PublicGetItemBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithContext(ctx context.Context) *PublicGetItemBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithHTTPClient(client *http.Client) *PublicGetItemBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithLanguage adds the language to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithLanguage(language *string) *PublicGetItemBySkuParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetLanguage(language *string) {
	o.Language = language
}

// WithNamespace adds the namespace to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithNamespace(namespace string) *PublicGetItemBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithRegion(region *string) *PublicGetItemBySkuParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetRegion(region *string) {
	o.Region = region
}

// WithSku adds the sku to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithSku(sku string) *PublicGetItemBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WithStoreID adds the storeID to the public get item by sku params
func (o *PublicGetItemBySkuParams) WithStoreID(storeID *string) *PublicGetItemBySkuParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get item by sku params
func (o *PublicGetItemBySkuParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetItemBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Language != nil {

		// query param language
		var qrLanguage string
		if o.Language != nil {
			qrLanguage = *o.Language
		}
		qLanguage := qrLanguage
		if qLanguage != "" {
			if err := r.SetQueryParam("language", qLanguage); err != nil {
				return err
			}
		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	// query param sku
	qrSku := o.Sku
	qSku := qrSku
	if qSku != "" {
		if err := r.SetQueryParam("sku", qSku); err != nil {
			return err
		}
	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
