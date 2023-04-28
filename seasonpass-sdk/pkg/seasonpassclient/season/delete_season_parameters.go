// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

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

// NewDeleteSeasonParams creates a new DeleteSeasonParams object
// with the default values initialized.
func NewDeleteSeasonParams() *DeleteSeasonParams {
	var ()
	return &DeleteSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSeasonParamsWithTimeout creates a new DeleteSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSeasonParamsWithTimeout(timeout time.Duration) *DeleteSeasonParams {
	var ()
	return &DeleteSeasonParams{

		timeout: timeout,
	}
}

// NewDeleteSeasonParamsWithContext creates a new DeleteSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSeasonParamsWithContext(ctx context.Context) *DeleteSeasonParams {
	var ()
	return &DeleteSeasonParams{

		Context: ctx,
	}
}

// NewDeleteSeasonParamsWithHTTPClient creates a new DeleteSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSeasonParamsWithHTTPClient(client *http.Client) *DeleteSeasonParams {
	var ()
	return &DeleteSeasonParams{
		HTTPClient: client,
	}
}

/*DeleteSeasonParams contains all the parameters to send to the API endpoint
for the delete season operation typically these are written to a http.Request
*/
type DeleteSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the delete season params
func (o *DeleteSeasonParams) WithTimeout(timeout time.Duration) *DeleteSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete season params
func (o *DeleteSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete season params
func (o *DeleteSeasonParams) WithContext(ctx context.Context) *DeleteSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete season params
func (o *DeleteSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete season params
func (o *DeleteSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete season params
func (o *DeleteSeasonParams) WithHTTPClient(client *http.Client) *DeleteSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete season params
func (o *DeleteSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete season params
func (o *DeleteSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete season params
func (o *DeleteSeasonParams) WithNamespace(namespace string) *DeleteSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete season params
func (o *DeleteSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the delete season params
func (o *DeleteSeasonParams) WithSeasonID(seasonID string) *DeleteSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the delete season params
func (o *DeleteSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
