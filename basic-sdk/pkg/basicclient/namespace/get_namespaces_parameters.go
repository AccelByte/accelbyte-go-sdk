// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package namespace

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

// NewGetNamespacesParams creates a new GetNamespacesParams object
// with the default values initialized.
func NewGetNamespacesParams() *GetNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetNamespacesParamsWithTimeout creates a new GetNamespacesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetNamespacesParamsWithTimeout(timeout time.Duration) *GetNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetNamespacesParamsWithContext creates a new GetNamespacesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetNamespacesParamsWithContext(ctx context.Context) *GetNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetNamespacesParamsWithHTTPClient creates a new GetNamespacesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetNamespacesParamsWithHTTPClient(client *http.Client) *GetNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetNamespacesParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetNamespacesParams contains all the parameters to send to the API endpoint
for the get namespaces operation typically these are written to a http.Request
*/
type GetNamespacesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ActiveOnly
	  only retrieves active namespaces

	*/
	ActiveOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get namespaces params
func (o *GetNamespacesParams) WithTimeout(timeout time.Duration) *GetNamespacesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get namespaces params
func (o *GetNamespacesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get namespaces params
func (o *GetNamespacesParams) WithContext(ctx context.Context) *GetNamespacesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get namespaces params
func (o *GetNamespacesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get namespaces params
func (o *GetNamespacesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get namespaces params
func (o *GetNamespacesParams) WithHTTPClient(client *http.Client) *GetNamespacesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get namespaces params
func (o *GetNamespacesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get namespaces params
func (o *GetNamespacesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetNamespacesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithActiveOnly adds the activeOnly to the get namespaces params
func (o *GetNamespacesParams) WithActiveOnly(activeOnly *bool) *GetNamespacesParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get namespaces params
func (o *GetNamespacesParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WriteToRequest writes these params to a swagger request
func (o *GetNamespacesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
