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

// NewPublicDeletePlayerAttributesParams creates a new PublicDeletePlayerAttributesParams object
// with the default values initialized.
func NewPublicDeletePlayerAttributesParams() *PublicDeletePlayerAttributesParams {
	var ()
	return &PublicDeletePlayerAttributesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDeletePlayerAttributesParamsWithTimeout creates a new PublicDeletePlayerAttributesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDeletePlayerAttributesParamsWithTimeout(timeout time.Duration) *PublicDeletePlayerAttributesParams {
	var ()
	return &PublicDeletePlayerAttributesParams{

		timeout: timeout,
	}
}

// NewPublicDeletePlayerAttributesParamsWithContext creates a new PublicDeletePlayerAttributesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDeletePlayerAttributesParamsWithContext(ctx context.Context) *PublicDeletePlayerAttributesParams {
	var ()
	return &PublicDeletePlayerAttributesParams{

		Context: ctx,
	}
}

// NewPublicDeletePlayerAttributesParamsWithHTTPClient creates a new PublicDeletePlayerAttributesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDeletePlayerAttributesParamsWithHTTPClient(client *http.Client) *PublicDeletePlayerAttributesParams {
	var ()
	return &PublicDeletePlayerAttributesParams{
		HTTPClient: client,
	}
}

/*PublicDeletePlayerAttributesParams contains all the parameters to send to the API endpoint
for the public delete player attributes operation typically these are written to a http.Request
*/
type PublicDeletePlayerAttributesParams struct {

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

// WithTimeout adds the timeout to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) WithTimeout(timeout time.Duration) *PublicDeletePlayerAttributesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) WithContext(ctx context.Context) *PublicDeletePlayerAttributesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) WithHTTPClient(client *http.Client) *PublicDeletePlayerAttributesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicDeletePlayerAttributesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) WithNamespace(namespace string) *PublicDeletePlayerAttributesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public delete player attributes params
func (o *PublicDeletePlayerAttributesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDeletePlayerAttributesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
