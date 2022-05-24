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

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGetItemIDBySkuParams creates a new GetItemIDBySkuParams object
// with the default values initialized.
func NewGetItemIDBySkuParams() *GetItemIDBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemIDBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetItemIDBySkuParamsWithTimeout creates a new GetItemIDBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetItemIDBySkuParamsWithTimeout(timeout time.Duration) *GetItemIDBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemIDBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetItemIDBySkuParamsWithContext creates a new GetItemIDBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetItemIDBySkuParamsWithContext(ctx context.Context) *GetItemIDBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemIDBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetItemIDBySkuParamsWithHTTPClient creates a new GetItemIDBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetItemIDBySkuParamsWithHTTPClient(client *http.Client) *GetItemIDBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemIDBySkuParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetItemIDBySkuParams contains all the parameters to send to the API endpoint
for the get item Id by sku operation typically these are written to a http.Request
*/
type GetItemIDBySkuParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ActiveOnly*/
	ActiveOnly *bool
	/*Namespace*/
	Namespace string
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

// WithTimeout adds the timeout to the get item Id by sku params
func (o *GetItemIDBySkuParams) WithTimeout(timeout time.Duration) *GetItemIDBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get item Id by sku params
func (o *GetItemIDBySkuParams) WithContext(ctx context.Context) *GetItemIDBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get item Id by sku params
func (o *GetItemIDBySkuParams) WithHTTPClient(client *http.Client) *GetItemIDBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithActiveOnly adds the activeOnly to the get item Id by sku params
func (o *GetItemIDBySkuParams) WithActiveOnly(activeOnly *bool) *GetItemIDBySkuParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithNamespace adds the namespace to the get item Id by sku params
func (o *GetItemIDBySkuParams) WithNamespace(namespace string) *GetItemIDBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSku adds the sku to the get item Id by sku params
func (o *GetItemIDBySkuParams) WithSku(sku string) *GetItemIDBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WithStoreID adds the storeID to the get item Id by sku params
func (o *GetItemIDBySkuParams) WithStoreID(storeID *string) *GetItemIDBySkuParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get item Id by sku params
func (o *GetItemIDBySkuParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetItemIDBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
