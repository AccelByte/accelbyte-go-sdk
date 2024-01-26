// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateItemPurchaseConditionParams creates a new UpdateItemPurchaseConditionParams object
// with the default values initialized.
func NewUpdateItemPurchaseConditionParams() *UpdateItemPurchaseConditionParams {
	var ()
	return &UpdateItemPurchaseConditionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateItemPurchaseConditionParamsWithTimeout creates a new UpdateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateItemPurchaseConditionParamsWithTimeout(timeout time.Duration) *UpdateItemPurchaseConditionParams {
	var ()
	return &UpdateItemPurchaseConditionParams{

		timeout: timeout,
	}
}

// NewUpdateItemPurchaseConditionParamsWithContext creates a new UpdateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateItemPurchaseConditionParamsWithContext(ctx context.Context) *UpdateItemPurchaseConditionParams {
	var ()
	return &UpdateItemPurchaseConditionParams{

		Context: ctx,
	}
}

// NewUpdateItemPurchaseConditionParamsWithHTTPClient creates a new UpdateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateItemPurchaseConditionParamsWithHTTPClient(client *http.Client) *UpdateItemPurchaseConditionParams {
	var ()
	return &UpdateItemPurchaseConditionParams{
		HTTPClient: client,
	}
}

/*UpdateItemPurchaseConditionParams contains all the parameters to send to the API endpoint
for the update item purchase condition operation typically these are written to a http.Request
*/
type UpdateItemPurchaseConditionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PurchaseConditionUpdate
	/*ItemID*/
	ItemID string
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) WithTimeout(timeout time.Duration) *UpdateItemPurchaseConditionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) WithContext(ctx context.Context) *UpdateItemPurchaseConditionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) WithHTTPClient(client *http.Client) *UpdateItemPurchaseConditionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateItemPurchaseConditionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) WithBody(body *platformclientmodels.PurchaseConditionUpdate) *UpdateItemPurchaseConditionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetBody(body *platformclientmodels.PurchaseConditionUpdate) {
	o.Body = body
}

// WithItemID adds the itemID to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) WithItemID(itemID string) *UpdateItemPurchaseConditionParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) WithNamespace(namespace string) *UpdateItemPurchaseConditionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) WithStoreID(storeID string) *UpdateItemPurchaseConditionParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the update item purchase condition params
func (o *UpdateItemPurchaseConditionParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateItemPurchaseConditionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param itemId
	if err := r.SetPathParam("itemId", o.ItemID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
