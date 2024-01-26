// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

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

// NewExportChannelsParams creates a new ExportChannelsParams object
// with the default values initialized.
func NewExportChannelsParams() *ExportChannelsParams {
	var ()
	return &ExportChannelsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportChannelsParamsWithTimeout creates a new ExportChannelsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportChannelsParamsWithTimeout(timeout time.Duration) *ExportChannelsParams {
	var ()
	return &ExportChannelsParams{

		timeout: timeout,
	}
}

// NewExportChannelsParamsWithContext creates a new ExportChannelsParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportChannelsParamsWithContext(ctx context.Context) *ExportChannelsParams {
	var ()
	return &ExportChannelsParams{

		Context: ctx,
	}
}

// NewExportChannelsParamsWithHTTPClient creates a new ExportChannelsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportChannelsParamsWithHTTPClient(client *http.Client) *ExportChannelsParams {
	var ()
	return &ExportChannelsParams{
		HTTPClient: client,
	}
}

/*ExportChannelsParams contains all the parameters to send to the API endpoint
for the export channels operation typically these are written to a http.Request
*/
type ExportChannelsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the export channels params
func (o *ExportChannelsParams) WithTimeout(timeout time.Duration) *ExportChannelsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export channels params
func (o *ExportChannelsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export channels params
func (o *ExportChannelsParams) WithContext(ctx context.Context) *ExportChannelsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export channels params
func (o *ExportChannelsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export channels params
func (o *ExportChannelsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export channels params
func (o *ExportChannelsParams) WithHTTPClient(client *http.Client) *ExportChannelsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export channels params
func (o *ExportChannelsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export channels params
func (o *ExportChannelsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ExportChannelsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the export channels params
func (o *ExportChannelsParams) WithNamespace(namespace string) *ExportChannelsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export channels params
func (o *ExportChannelsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ExportChannelsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
