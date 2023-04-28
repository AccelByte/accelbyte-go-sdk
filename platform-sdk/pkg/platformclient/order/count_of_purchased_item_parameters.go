// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

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

// NewCountOfPurchasedItemParams creates a new CountOfPurchasedItemParams object
// with the default values initialized.
func NewCountOfPurchasedItemParams() *CountOfPurchasedItemParams {
	var ()
	return &CountOfPurchasedItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCountOfPurchasedItemParamsWithTimeout creates a new CountOfPurchasedItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCountOfPurchasedItemParamsWithTimeout(timeout time.Duration) *CountOfPurchasedItemParams {
	var ()
	return &CountOfPurchasedItemParams{

		timeout: timeout,
	}
}

// NewCountOfPurchasedItemParamsWithContext creates a new CountOfPurchasedItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewCountOfPurchasedItemParamsWithContext(ctx context.Context) *CountOfPurchasedItemParams {
	var ()
	return &CountOfPurchasedItemParams{

		Context: ctx,
	}
}

// NewCountOfPurchasedItemParamsWithHTTPClient creates a new CountOfPurchasedItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCountOfPurchasedItemParamsWithHTTPClient(client *http.Client) *CountOfPurchasedItemParams {
	var ()
	return &CountOfPurchasedItemParams{
		HTTPClient: client,
	}
}

/*CountOfPurchasedItemParams contains all the parameters to send to the API endpoint
for the count of purchased item operation typically these are written to a http.Request
*/
type CountOfPurchasedItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ItemID*/
	ItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the count of purchased item params
func (o *CountOfPurchasedItemParams) WithTimeout(timeout time.Duration) *CountOfPurchasedItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the count of purchased item params
func (o *CountOfPurchasedItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the count of purchased item params
func (o *CountOfPurchasedItemParams) WithContext(ctx context.Context) *CountOfPurchasedItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the count of purchased item params
func (o *CountOfPurchasedItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the count of purchased item params
func (o *CountOfPurchasedItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the count of purchased item params
func (o *CountOfPurchasedItemParams) WithHTTPClient(client *http.Client) *CountOfPurchasedItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the count of purchased item params
func (o *CountOfPurchasedItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the count of purchased item params
func (o *CountOfPurchasedItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the count of purchased item params
func (o *CountOfPurchasedItemParams) WithNamespace(namespace string) *CountOfPurchasedItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the count of purchased item params
func (o *CountOfPurchasedItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the count of purchased item params
func (o *CountOfPurchasedItemParams) WithUserID(userID string) *CountOfPurchasedItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the count of purchased item params
func (o *CountOfPurchasedItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithItemID adds the itemID to the count of purchased item params
func (o *CountOfPurchasedItemParams) WithItemID(itemID string) *CountOfPurchasedItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the count of purchased item params
func (o *CountOfPurchasedItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WriteToRequest writes these params to a swagger request
func (o *CountOfPurchasedItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// query param itemId
	qrItemID := o.ItemID
	qItemID := qrItemID
	if qItemID != "" {
		if err := r.SetQueryParam("itemId", qItemID); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
