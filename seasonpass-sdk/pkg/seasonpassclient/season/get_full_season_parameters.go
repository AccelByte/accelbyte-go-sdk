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

// NewGetFullSeasonParams creates a new GetFullSeasonParams object
// with the default values initialized.
func NewGetFullSeasonParams() *GetFullSeasonParams {
	var ()
	return &GetFullSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetFullSeasonParamsWithTimeout creates a new GetFullSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetFullSeasonParamsWithTimeout(timeout time.Duration) *GetFullSeasonParams {
	var ()
	return &GetFullSeasonParams{

		timeout: timeout,
	}
}

// NewGetFullSeasonParamsWithContext creates a new GetFullSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetFullSeasonParamsWithContext(ctx context.Context) *GetFullSeasonParams {
	var ()
	return &GetFullSeasonParams{

		Context: ctx,
	}
}

// NewGetFullSeasonParamsWithHTTPClient creates a new GetFullSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetFullSeasonParamsWithHTTPClient(client *http.Client) *GetFullSeasonParams {
	var ()
	return &GetFullSeasonParams{
		HTTPClient: client,
	}
}

/*GetFullSeasonParams contains all the parameters to send to the API endpoint
for the get full season operation typically these are written to a http.Request
*/
type GetFullSeasonParams struct {

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

// WithTimeout adds the timeout to the get full season params
func (o *GetFullSeasonParams) WithTimeout(timeout time.Duration) *GetFullSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get full season params
func (o *GetFullSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get full season params
func (o *GetFullSeasonParams) WithContext(ctx context.Context) *GetFullSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get full season params
func (o *GetFullSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get full season params
func (o *GetFullSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get full season params
func (o *GetFullSeasonParams) WithHTTPClient(client *http.Client) *GetFullSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get full season params
func (o *GetFullSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get full season params
func (o *GetFullSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get full season params
func (o *GetFullSeasonParams) WithNamespace(namespace string) *GetFullSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get full season params
func (o *GetFullSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the get full season params
func (o *GetFullSeasonParams) WithSeasonID(seasonID string) *GetFullSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the get full season params
func (o *GetFullSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *GetFullSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
