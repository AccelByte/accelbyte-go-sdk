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

// NewAdminGetItemReferencesParams creates a new AdminGetItemReferencesParams object
// with the default values initialized.
func NewAdminGetItemReferencesParams() *AdminGetItemReferencesParams {
	var ()
	return &AdminGetItemReferencesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetItemReferencesParamsWithTimeout creates a new AdminGetItemReferencesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetItemReferencesParamsWithTimeout(timeout time.Duration) *AdminGetItemReferencesParams {
	var ()
	return &AdminGetItemReferencesParams{

		timeout: timeout,
	}
}

// NewAdminGetItemReferencesParamsWithContext creates a new AdminGetItemReferencesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetItemReferencesParamsWithContext(ctx context.Context) *AdminGetItemReferencesParams {
	var ()
	return &AdminGetItemReferencesParams{

		Context: ctx,
	}
}

// NewAdminGetItemReferencesParamsWithHTTPClient creates a new AdminGetItemReferencesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetItemReferencesParamsWithHTTPClient(client *http.Client) *AdminGetItemReferencesParams {
	var ()
	return &AdminGetItemReferencesParams{
		HTTPClient: client,
	}
}

/*AdminGetItemReferencesParams contains all the parameters to send to the API endpoint
for the admin get item references operation typically these are written to a http.Request
*/
type AdminGetItemReferencesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

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

// WithTimeout adds the timeout to the admin get item references params
func (o *AdminGetItemReferencesParams) WithTimeout(timeout time.Duration) *AdminGetItemReferencesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get item references params
func (o *AdminGetItemReferencesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get item references params
func (o *AdminGetItemReferencesParams) WithContext(ctx context.Context) *AdminGetItemReferencesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get item references params
func (o *AdminGetItemReferencesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get item references params
func (o *AdminGetItemReferencesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get item references params
func (o *AdminGetItemReferencesParams) WithHTTPClient(client *http.Client) *AdminGetItemReferencesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get item references params
func (o *AdminGetItemReferencesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get item references params
func (o *AdminGetItemReferencesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetItemReferencesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get item references params
func (o *AdminGetItemReferencesParams) WithNamespace(namespace string) *AdminGetItemReferencesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get item references params
func (o *AdminGetItemReferencesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithItemID adds the itemID to the admin get item references params
func (o *AdminGetItemReferencesParams) WithItemID(itemID string) *AdminGetItemReferencesParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the admin get item references params
func (o *AdminGetItemReferencesParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetItemReferencesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
