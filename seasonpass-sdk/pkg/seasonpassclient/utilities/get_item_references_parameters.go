// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package utilities

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

// NewGetItemReferencesParams creates a new GetItemReferencesParams object
// with the default values initialized.
func NewGetItemReferencesParams() *GetItemReferencesParams {
	var ()
	return &GetItemReferencesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetItemReferencesParamsWithTimeout creates a new GetItemReferencesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetItemReferencesParamsWithTimeout(timeout time.Duration) *GetItemReferencesParams {
	var ()
	return &GetItemReferencesParams{

		timeout: timeout,
	}
}

// NewGetItemReferencesParamsWithContext creates a new GetItemReferencesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetItemReferencesParamsWithContext(ctx context.Context) *GetItemReferencesParams {
	var ()
	return &GetItemReferencesParams{

		Context: ctx,
	}
}

// NewGetItemReferencesParamsWithHTTPClient creates a new GetItemReferencesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetItemReferencesParamsWithHTTPClient(client *http.Client) *GetItemReferencesParams {
	var ()
	return &GetItemReferencesParams{
		HTTPClient: client,
	}
}

/*GetItemReferencesParams contains all the parameters to send to the API endpoint
for the get item references operation typically these are written to a http.Request
*/
type GetItemReferencesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*ItemID
	  the id of the ecommerce item

	*/
	ItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get item references params
func (o *GetItemReferencesParams) WithTimeout(timeout time.Duration) *GetItemReferencesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get item references params
func (o *GetItemReferencesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get item references params
func (o *GetItemReferencesParams) WithContext(ctx context.Context) *GetItemReferencesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get item references params
func (o *GetItemReferencesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get item references params
func (o *GetItemReferencesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get item references params
func (o *GetItemReferencesParams) WithHTTPClient(client *http.Client) *GetItemReferencesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get item references params
func (o *GetItemReferencesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get item references params
func (o *GetItemReferencesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetItemReferencesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get item references params
func (o *GetItemReferencesParams) WithNamespace(namespace string) *GetItemReferencesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get item references params
func (o *GetItemReferencesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithItemID adds the itemID to the get item references params
func (o *GetItemReferencesParams) WithItemID(itemID string) *GetItemReferencesParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the get item references params
func (o *GetItemReferencesParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WriteToRequest writes these params to a swagger request
func (o *GetItemReferencesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
