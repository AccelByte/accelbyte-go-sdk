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

// NewPublicGetNamespacesParams creates a new PublicGetNamespacesParams object
// with the default values initialized.
func NewPublicGetNamespacesParams() *PublicGetNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &PublicGetNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetNamespacesParamsWithTimeout creates a new PublicGetNamespacesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetNamespacesParamsWithTimeout(timeout time.Duration) *PublicGetNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &PublicGetNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewPublicGetNamespacesParamsWithContext creates a new PublicGetNamespacesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetNamespacesParamsWithContext(ctx context.Context) *PublicGetNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &PublicGetNamespacesParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewPublicGetNamespacesParamsWithHTTPClient creates a new PublicGetNamespacesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetNamespacesParamsWithHTTPClient(client *http.Client) *PublicGetNamespacesParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &PublicGetNamespacesParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*PublicGetNamespacesParams contains all the parameters to send to the API endpoint
for the public get namespaces operation typically these are written to a http.Request
*/
type PublicGetNamespacesParams struct {

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

// WithTimeout adds the timeout to the public get namespaces params
func (o *PublicGetNamespacesParams) WithTimeout(timeout time.Duration) *PublicGetNamespacesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get namespaces params
func (o *PublicGetNamespacesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get namespaces params
func (o *PublicGetNamespacesParams) WithContext(ctx context.Context) *PublicGetNamespacesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get namespaces params
func (o *PublicGetNamespacesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get namespaces params
func (o *PublicGetNamespacesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get namespaces params
func (o *PublicGetNamespacesParams) WithHTTPClient(client *http.Client) *PublicGetNamespacesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get namespaces params
func (o *PublicGetNamespacesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get namespaces params
func (o *PublicGetNamespacesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetNamespacesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithActiveOnly adds the activeOnly to the public get namespaces params
func (o *PublicGetNamespacesParams) WithActiveOnly(activeOnly *bool) *PublicGetNamespacesParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the public get namespaces params
func (o *PublicGetNamespacesParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetNamespacesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
