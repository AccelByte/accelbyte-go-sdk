// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pass

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

// NewDeletePassParams creates a new DeletePassParams object
// with the default values initialized.
func NewDeletePassParams() *DeletePassParams {
	var ()
	return &DeletePassParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePassParamsWithTimeout creates a new DeletePassParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePassParamsWithTimeout(timeout time.Duration) *DeletePassParams {
	var ()
	return &DeletePassParams{

		timeout: timeout,
	}
}

// NewDeletePassParamsWithContext creates a new DeletePassParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePassParamsWithContext(ctx context.Context) *DeletePassParams {
	var ()
	return &DeletePassParams{

		Context: ctx,
	}
}

// NewDeletePassParamsWithHTTPClient creates a new DeletePassParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePassParamsWithHTTPClient(client *http.Client) *DeletePassParams {
	var ()
	return &DeletePassParams{
		HTTPClient: client,
	}
}

/*DeletePassParams contains all the parameters to send to the API endpoint
for the delete pass operation typically these are written to a http.Request
*/
type DeletePassParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code*/
	Code string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete pass params
func (o *DeletePassParams) WithTimeout(timeout time.Duration) *DeletePassParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete pass params
func (o *DeletePassParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete pass params
func (o *DeletePassParams) WithContext(ctx context.Context) *DeletePassParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete pass params
func (o *DeletePassParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete pass params
func (o *DeletePassParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete pass params
func (o *DeletePassParams) WithHTTPClient(client *http.Client) *DeletePassParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete pass params
func (o *DeletePassParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete pass params
func (o *DeletePassParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCode adds the code to the delete pass params
func (o *DeletePassParams) WithCode(code string) *DeletePassParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the delete pass params
func (o *DeletePassParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the delete pass params
func (o *DeletePassParams) WithNamespace(namespace string) *DeletePassParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete pass params
func (o *DeletePassParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the delete pass params
func (o *DeletePassParams) WithSeasonID(seasonID string) *DeletePassParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the delete pass params
func (o *DeletePassParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePassParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
