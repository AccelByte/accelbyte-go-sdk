// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

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

// NewDeleteReasonParams creates a new DeleteReasonParams object
// with the default values initialized.
func NewDeleteReasonParams() *DeleteReasonParams {
	var ()
	return &DeleteReasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteReasonParamsWithTimeout creates a new DeleteReasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteReasonParamsWithTimeout(timeout time.Duration) *DeleteReasonParams {
	var ()
	return &DeleteReasonParams{

		timeout: timeout,
	}
}

// NewDeleteReasonParamsWithContext creates a new DeleteReasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteReasonParamsWithContext(ctx context.Context) *DeleteReasonParams {
	var ()
	return &DeleteReasonParams{

		Context: ctx,
	}
}

// NewDeleteReasonParamsWithHTTPClient creates a new DeleteReasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteReasonParamsWithHTTPClient(client *http.Client) *DeleteReasonParams {
	var ()
	return &DeleteReasonParams{
		HTTPClient: client,
	}
}

/*DeleteReasonParams contains all the parameters to send to the API endpoint
for the delete reason operation typically these are written to a http.Request
*/
type DeleteReasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ReasonID*/
	ReasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete reason params
func (o *DeleteReasonParams) WithTimeout(timeout time.Duration) *DeleteReasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete reason params
func (o *DeleteReasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete reason params
func (o *DeleteReasonParams) WithContext(ctx context.Context) *DeleteReasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete reason params
func (o *DeleteReasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete reason params
func (o *DeleteReasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete reason params
func (o *DeleteReasonParams) WithHTTPClient(client *http.Client) *DeleteReasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete reason params
func (o *DeleteReasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete reason params
func (o *DeleteReasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete reason params
func (o *DeleteReasonParams) WithNamespace(namespace string) *DeleteReasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete reason params
func (o *DeleteReasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithReasonID adds the reasonID to the delete reason params
func (o *DeleteReasonParams) WithReasonID(reasonID string) *DeleteReasonParams {
	o.SetReasonID(reasonID)
	return o
}

// SetReasonID adds the reasonId to the delete reason params
func (o *DeleteReasonParams) SetReasonID(reasonID string) {
	o.ReasonID = reasonID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteReasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param reasonId
	if err := r.SetPathParam("reasonId", o.ReasonID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
