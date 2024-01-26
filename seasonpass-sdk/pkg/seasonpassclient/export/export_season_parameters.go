// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package export

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

// NewExportSeasonParams creates a new ExportSeasonParams object
// with the default values initialized.
func NewExportSeasonParams() *ExportSeasonParams {
	var ()
	return &ExportSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportSeasonParamsWithTimeout creates a new ExportSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportSeasonParamsWithTimeout(timeout time.Duration) *ExportSeasonParams {
	var ()
	return &ExportSeasonParams{

		timeout: timeout,
	}
}

// NewExportSeasonParamsWithContext creates a new ExportSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportSeasonParamsWithContext(ctx context.Context) *ExportSeasonParams {
	var ()
	return &ExportSeasonParams{

		Context: ctx,
	}
}

// NewExportSeasonParamsWithHTTPClient creates a new ExportSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportSeasonParamsWithHTTPClient(client *http.Client) *ExportSeasonParams {
	var ()
	return &ExportSeasonParams{
		HTTPClient: client,
	}
}

/*ExportSeasonParams contains all the parameters to send to the API endpoint
for the export season operation typically these are written to a http.Request
*/
type ExportSeasonParams struct {

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

// WithTimeout adds the timeout to the export season params
func (o *ExportSeasonParams) WithTimeout(timeout time.Duration) *ExportSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export season params
func (o *ExportSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export season params
func (o *ExportSeasonParams) WithContext(ctx context.Context) *ExportSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export season params
func (o *ExportSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export season params
func (o *ExportSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export season params
func (o *ExportSeasonParams) WithHTTPClient(client *http.Client) *ExportSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export season params
func (o *ExportSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export season params
func (o *ExportSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ExportSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the export season params
func (o *ExportSeasonParams) WithNamespace(namespace string) *ExportSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export season params
func (o *ExportSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ExportSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
