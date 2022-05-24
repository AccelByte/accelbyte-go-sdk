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
)

// NewPublicGetItemDynamicDataParams creates a new PublicGetItemDynamicDataParams object
// with the default values initialized.
func NewPublicGetItemDynamicDataParams() *PublicGetItemDynamicDataParams {
	var ()
	return &PublicGetItemDynamicDataParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetItemDynamicDataParamsWithTimeout creates a new PublicGetItemDynamicDataParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetItemDynamicDataParamsWithTimeout(timeout time.Duration) *PublicGetItemDynamicDataParams {
	var ()
	return &PublicGetItemDynamicDataParams{

		timeout: timeout,
	}
}

// NewPublicGetItemDynamicDataParamsWithContext creates a new PublicGetItemDynamicDataParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetItemDynamicDataParamsWithContext(ctx context.Context) *PublicGetItemDynamicDataParams {
	var ()
	return &PublicGetItemDynamicDataParams{

		Context: ctx,
	}
}

// NewPublicGetItemDynamicDataParamsWithHTTPClient creates a new PublicGetItemDynamicDataParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetItemDynamicDataParamsWithHTTPClient(client *http.Client) *PublicGetItemDynamicDataParams {
	var ()
	return &PublicGetItemDynamicDataParams{
		HTTPClient: client,
	}
}

/*PublicGetItemDynamicDataParams contains all the parameters to send to the API endpoint
for the public get item dynamic data operation typically these are written to a http.Request
*/
type PublicGetItemDynamicDataParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ItemID*/
	ItemID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) WithTimeout(timeout time.Duration) *PublicGetItemDynamicDataParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) WithContext(ctx context.Context) *PublicGetItemDynamicDataParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) WithHTTPClient(client *http.Client) *PublicGetItemDynamicDataParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithItemID adds the itemID to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) WithItemID(itemID string) *PublicGetItemDynamicDataParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) WithNamespace(namespace string) *PublicGetItemDynamicDataParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get item dynamic data params
func (o *PublicGetItemDynamicDataParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetItemDynamicDataParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param itemId
	if err := r.SetPathParam("itemId", o.ItemID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
