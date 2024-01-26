// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

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

// NewPublicGetPlayerAttributesParams creates a new PublicGetPlayerAttributesParams object
// with the default values initialized.
func NewPublicGetPlayerAttributesParams() *PublicGetPlayerAttributesParams {
	var ()
	return &PublicGetPlayerAttributesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetPlayerAttributesParamsWithTimeout creates a new PublicGetPlayerAttributesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetPlayerAttributesParamsWithTimeout(timeout time.Duration) *PublicGetPlayerAttributesParams {
	var ()
	return &PublicGetPlayerAttributesParams{

		timeout: timeout,
	}
}

// NewPublicGetPlayerAttributesParamsWithContext creates a new PublicGetPlayerAttributesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetPlayerAttributesParamsWithContext(ctx context.Context) *PublicGetPlayerAttributesParams {
	var ()
	return &PublicGetPlayerAttributesParams{

		Context: ctx,
	}
}

// NewPublicGetPlayerAttributesParamsWithHTTPClient creates a new PublicGetPlayerAttributesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetPlayerAttributesParamsWithHTTPClient(client *http.Client) *PublicGetPlayerAttributesParams {
	var ()
	return &PublicGetPlayerAttributesParams{
		HTTPClient: client,
	}
}

/*PublicGetPlayerAttributesParams contains all the parameters to send to the API endpoint
for the public get player attributes operation typically these are written to a http.Request
*/
type PublicGetPlayerAttributesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) WithTimeout(timeout time.Duration) *PublicGetPlayerAttributesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) WithContext(ctx context.Context) *PublicGetPlayerAttributesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) WithHTTPClient(client *http.Client) *PublicGetPlayerAttributesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetPlayerAttributesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) WithNamespace(namespace string) *PublicGetPlayerAttributesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get player attributes params
func (o *PublicGetPlayerAttributesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetPlayerAttributesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
