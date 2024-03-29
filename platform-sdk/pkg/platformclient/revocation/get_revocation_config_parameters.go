// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package revocation

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

// NewGetRevocationConfigParams creates a new GetRevocationConfigParams object
// with the default values initialized.
func NewGetRevocationConfigParams() *GetRevocationConfigParams {
	var ()
	return &GetRevocationConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRevocationConfigParamsWithTimeout creates a new GetRevocationConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRevocationConfigParamsWithTimeout(timeout time.Duration) *GetRevocationConfigParams {
	var ()
	return &GetRevocationConfigParams{

		timeout: timeout,
	}
}

// NewGetRevocationConfigParamsWithContext creates a new GetRevocationConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRevocationConfigParamsWithContext(ctx context.Context) *GetRevocationConfigParams {
	var ()
	return &GetRevocationConfigParams{

		Context: ctx,
	}
}

// NewGetRevocationConfigParamsWithHTTPClient creates a new GetRevocationConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRevocationConfigParamsWithHTTPClient(client *http.Client) *GetRevocationConfigParams {
	var ()
	return &GetRevocationConfigParams{
		HTTPClient: client,
	}
}

/*GetRevocationConfigParams contains all the parameters to send to the API endpoint
for the get revocation config operation typically these are written to a http.Request
*/
type GetRevocationConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get revocation config params
func (o *GetRevocationConfigParams) WithTimeout(timeout time.Duration) *GetRevocationConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get revocation config params
func (o *GetRevocationConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get revocation config params
func (o *GetRevocationConfigParams) WithContext(ctx context.Context) *GetRevocationConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get revocation config params
func (o *GetRevocationConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get revocation config params
func (o *GetRevocationConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get revocation config params
func (o *GetRevocationConfigParams) WithHTTPClient(client *http.Client) *GetRevocationConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get revocation config params
func (o *GetRevocationConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get revocation config params
func (o *GetRevocationConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetRevocationConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get revocation config params
func (o *GetRevocationConfigParams) WithNamespace(namespace string) *GetRevocationConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get revocation config params
func (o *GetRevocationConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetRevocationConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
