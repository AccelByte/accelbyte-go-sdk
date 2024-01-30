// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// NewDownloadCSVTemplatesParams creates a new DownloadCSVTemplatesParams object
// with the default values initialized.
func NewDownloadCSVTemplatesParams() *DownloadCSVTemplatesParams {
	var ()
	return &DownloadCSVTemplatesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDownloadCSVTemplatesParamsWithTimeout creates a new DownloadCSVTemplatesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDownloadCSVTemplatesParamsWithTimeout(timeout time.Duration) *DownloadCSVTemplatesParams {
	var ()
	return &DownloadCSVTemplatesParams{

		timeout: timeout,
	}
}

// NewDownloadCSVTemplatesParamsWithContext creates a new DownloadCSVTemplatesParams object
// with the default values initialized, and the ability to set a context for a request
func NewDownloadCSVTemplatesParamsWithContext(ctx context.Context) *DownloadCSVTemplatesParams {
	var ()
	return &DownloadCSVTemplatesParams{

		Context: ctx,
	}
}

// NewDownloadCSVTemplatesParamsWithHTTPClient creates a new DownloadCSVTemplatesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDownloadCSVTemplatesParamsWithHTTPClient(client *http.Client) *DownloadCSVTemplatesParams {
	var ()
	return &DownloadCSVTemplatesParams{
		HTTPClient: client,
	}
}

/*DownloadCSVTemplatesParams contains all the parameters to send to the API endpoint
for the download csv templates operation typically these are written to a http.Request
*/
type DownloadCSVTemplatesParams struct {

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

// WithTimeout adds the timeout to the download csv templates params
func (o *DownloadCSVTemplatesParams) WithTimeout(timeout time.Duration) *DownloadCSVTemplatesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the download csv templates params
func (o *DownloadCSVTemplatesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the download csv templates params
func (o *DownloadCSVTemplatesParams) WithContext(ctx context.Context) *DownloadCSVTemplatesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the download csv templates params
func (o *DownloadCSVTemplatesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the download csv templates params
func (o *DownloadCSVTemplatesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the download csv templates params
func (o *DownloadCSVTemplatesParams) WithHTTPClient(client *http.Client) *DownloadCSVTemplatesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the download csv templates params
func (o *DownloadCSVTemplatesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the download csv templates params
func (o *DownloadCSVTemplatesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DownloadCSVTemplatesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the download csv templates params
func (o *DownloadCSVTemplatesParams) WithNamespace(namespace string) *DownloadCSVTemplatesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the download csv templates params
func (o *DownloadCSVTemplatesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DownloadCSVTemplatesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
