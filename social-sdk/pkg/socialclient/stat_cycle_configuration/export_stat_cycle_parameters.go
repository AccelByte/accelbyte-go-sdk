// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

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

// NewExportStatCycleParams creates a new ExportStatCycleParams object
// with the default values initialized.
func NewExportStatCycleParams() *ExportStatCycleParams {
	var ()
	return &ExportStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportStatCycleParamsWithTimeout creates a new ExportStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportStatCycleParamsWithTimeout(timeout time.Duration) *ExportStatCycleParams {
	var ()
	return &ExportStatCycleParams{

		timeout: timeout,
	}
}

// NewExportStatCycleParamsWithContext creates a new ExportStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportStatCycleParamsWithContext(ctx context.Context) *ExportStatCycleParams {
	var ()
	return &ExportStatCycleParams{

		Context: ctx,
	}
}

// NewExportStatCycleParamsWithHTTPClient creates a new ExportStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportStatCycleParamsWithHTTPClient(client *http.Client) *ExportStatCycleParams {
	var ()
	return &ExportStatCycleParams{
		HTTPClient: client,
	}
}

/*ExportStatCycleParams contains all the parameters to send to the API endpoint
for the export stat cycle operation typically these are written to a http.Request
*/
type ExportStatCycleParams struct {

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

// WithTimeout adds the timeout to the export stat cycle params
func (o *ExportStatCycleParams) WithTimeout(timeout time.Duration) *ExportStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export stat cycle params
func (o *ExportStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export stat cycle params
func (o *ExportStatCycleParams) WithContext(ctx context.Context) *ExportStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export stat cycle params
func (o *ExportStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export stat cycle params
func (o *ExportStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export stat cycle params
func (o *ExportStatCycleParams) WithHTTPClient(client *http.Client) *ExportStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export stat cycle params
func (o *ExportStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export stat cycle params
func (o *ExportStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ExportStatCycleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the export stat cycle params
func (o *ExportStatCycleParams) WithNamespace(namespace string) *ExportStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export stat cycle params
func (o *ExportStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ExportStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
