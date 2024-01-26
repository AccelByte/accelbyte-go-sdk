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
)

// NewGetItemDynamicDataParams creates a new GetItemDynamicDataParams object
// with the default values initialized.
func NewGetItemDynamicDataParams() *GetItemDynamicDataParams {
	var ()
	return &GetItemDynamicDataParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetItemDynamicDataParamsWithTimeout creates a new GetItemDynamicDataParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetItemDynamicDataParamsWithTimeout(timeout time.Duration) *GetItemDynamicDataParams {
	var ()
	return &GetItemDynamicDataParams{

		timeout: timeout,
	}
}

// NewGetItemDynamicDataParamsWithContext creates a new GetItemDynamicDataParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetItemDynamicDataParamsWithContext(ctx context.Context) *GetItemDynamicDataParams {
	var ()
	return &GetItemDynamicDataParams{

		Context: ctx,
	}
}

// NewGetItemDynamicDataParamsWithHTTPClient creates a new GetItemDynamicDataParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetItemDynamicDataParamsWithHTTPClient(client *http.Client) *GetItemDynamicDataParams {
	var ()
	return &GetItemDynamicDataParams{
		HTTPClient: client,
	}
}

/*GetItemDynamicDataParams contains all the parameters to send to the API endpoint
for the get item dynamic data operation typically these are written to a http.Request
*/
type GetItemDynamicDataParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get item dynamic data params
func (o *GetItemDynamicDataParams) WithTimeout(timeout time.Duration) *GetItemDynamicDataParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get item dynamic data params
func (o *GetItemDynamicDataParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get item dynamic data params
func (o *GetItemDynamicDataParams) WithContext(ctx context.Context) *GetItemDynamicDataParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get item dynamic data params
func (o *GetItemDynamicDataParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get item dynamic data params
func (o *GetItemDynamicDataParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get item dynamic data params
func (o *GetItemDynamicDataParams) WithHTTPClient(client *http.Client) *GetItemDynamicDataParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get item dynamic data params
func (o *GetItemDynamicDataParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get item dynamic data params
func (o *GetItemDynamicDataParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetItemDynamicDataParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithItemID adds the itemID to the get item dynamic data params
func (o *GetItemDynamicDataParams) WithItemID(itemID string) *GetItemDynamicDataParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the get item dynamic data params
func (o *GetItemDynamicDataParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the get item dynamic data params
func (o *GetItemDynamicDataParams) WithNamespace(namespace string) *GetItemDynamicDataParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get item dynamic data params
func (o *GetItemDynamicDataParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetItemDynamicDataParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
