// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

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

// NewExportStatsParams creates a new ExportStatsParams object
// with the default values initialized.
func NewExportStatsParams() *ExportStatsParams {
	var ()
	return &ExportStatsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportStatsParamsWithTimeout creates a new ExportStatsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportStatsParamsWithTimeout(timeout time.Duration) *ExportStatsParams {
	var ()
	return &ExportStatsParams{

		timeout: timeout,
	}
}

// NewExportStatsParamsWithContext creates a new ExportStatsParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportStatsParamsWithContext(ctx context.Context) *ExportStatsParams {
	var ()
	return &ExportStatsParams{

		Context: ctx,
	}
}

// NewExportStatsParamsWithHTTPClient creates a new ExportStatsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportStatsParamsWithHTTPClient(client *http.Client) *ExportStatsParams {
	var ()
	return &ExportStatsParams{
		HTTPClient: client,
	}
}

/*ExportStatsParams contains all the parameters to send to the API endpoint
for the export stats operation typically these are written to a http.Request
*/
type ExportStatsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the export stats params
func (o *ExportStatsParams) WithTimeout(timeout time.Duration) *ExportStatsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export stats params
func (o *ExportStatsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export stats params
func (o *ExportStatsParams) WithContext(ctx context.Context) *ExportStatsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export stats params
func (o *ExportStatsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export stats params
func (o *ExportStatsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export stats params
func (o *ExportStatsParams) WithHTTPClient(client *http.Client) *ExportStatsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export stats params
func (o *ExportStatsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export stats params
func (o *ExportStatsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ExportStatsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the export stats params
func (o *ExportStatsParams) WithNamespace(namespace string) *ExportStatsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export stats params
func (o *ExportStatsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ExportStatsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
