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

// NewDeleteRevocationConfigParams creates a new DeleteRevocationConfigParams object
// with the default values initialized.
func NewDeleteRevocationConfigParams() *DeleteRevocationConfigParams {
	var ()
	return &DeleteRevocationConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteRevocationConfigParamsWithTimeout creates a new DeleteRevocationConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteRevocationConfigParamsWithTimeout(timeout time.Duration) *DeleteRevocationConfigParams {
	var ()
	return &DeleteRevocationConfigParams{

		timeout: timeout,
	}
}

// NewDeleteRevocationConfigParamsWithContext creates a new DeleteRevocationConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteRevocationConfigParamsWithContext(ctx context.Context) *DeleteRevocationConfigParams {
	var ()
	return &DeleteRevocationConfigParams{

		Context: ctx,
	}
}

// NewDeleteRevocationConfigParamsWithHTTPClient creates a new DeleteRevocationConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteRevocationConfigParamsWithHTTPClient(client *http.Client) *DeleteRevocationConfigParams {
	var ()
	return &DeleteRevocationConfigParams{
		HTTPClient: client,
	}
}

/*DeleteRevocationConfigParams contains all the parameters to send to the API endpoint
for the delete revocation config operation typically these are written to a http.Request
*/
type DeleteRevocationConfigParams struct {

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

// WithTimeout adds the timeout to the delete revocation config params
func (o *DeleteRevocationConfigParams) WithTimeout(timeout time.Duration) *DeleteRevocationConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete revocation config params
func (o *DeleteRevocationConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete revocation config params
func (o *DeleteRevocationConfigParams) WithContext(ctx context.Context) *DeleteRevocationConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete revocation config params
func (o *DeleteRevocationConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete revocation config params
func (o *DeleteRevocationConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete revocation config params
func (o *DeleteRevocationConfigParams) WithHTTPClient(client *http.Client) *DeleteRevocationConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete revocation config params
func (o *DeleteRevocationConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete revocation config params
func (o *DeleteRevocationConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteRevocationConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete revocation config params
func (o *DeleteRevocationConfigParams) WithNamespace(namespace string) *DeleteRevocationConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete revocation config params
func (o *DeleteRevocationConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteRevocationConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
