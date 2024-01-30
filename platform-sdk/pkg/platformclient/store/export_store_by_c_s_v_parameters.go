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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewExportStoreByCSVParams creates a new ExportStoreByCSVParams object
// with the default values initialized.
func NewExportStoreByCSVParams() *ExportStoreByCSVParams {
	var ()
	return &ExportStoreByCSVParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportStoreByCSVParamsWithTimeout creates a new ExportStoreByCSVParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportStoreByCSVParamsWithTimeout(timeout time.Duration) *ExportStoreByCSVParams {
	var ()
	return &ExportStoreByCSVParams{

		timeout: timeout,
	}
}

// NewExportStoreByCSVParamsWithContext creates a new ExportStoreByCSVParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportStoreByCSVParamsWithContext(ctx context.Context) *ExportStoreByCSVParams {
	var ()
	return &ExportStoreByCSVParams{

		Context: ctx,
	}
}

// NewExportStoreByCSVParamsWithHTTPClient creates a new ExportStoreByCSVParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportStoreByCSVParamsWithHTTPClient(client *http.Client) *ExportStoreByCSVParams {
	var ()
	return &ExportStoreByCSVParams{
		HTTPClient: client,
	}
}

/*ExportStoreByCSVParams contains all the parameters to send to the API endpoint
for the export store by csv operation typically these are written to a http.Request
*/
type ExportStoreByCSVParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ExportStoreToCSVRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the export store by csv params
func (o *ExportStoreByCSVParams) WithTimeout(timeout time.Duration) *ExportStoreByCSVParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export store by csv params
func (o *ExportStoreByCSVParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export store by csv params
func (o *ExportStoreByCSVParams) WithContext(ctx context.Context) *ExportStoreByCSVParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export store by csv params
func (o *ExportStoreByCSVParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export store by csv params
func (o *ExportStoreByCSVParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export store by csv params
func (o *ExportStoreByCSVParams) WithHTTPClient(client *http.Client) *ExportStoreByCSVParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export store by csv params
func (o *ExportStoreByCSVParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export store by csv params
func (o *ExportStoreByCSVParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ExportStoreByCSVParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the export store by csv params
func (o *ExportStoreByCSVParams) WithBody(body *platformclientmodels.ExportStoreToCSVRequest) *ExportStoreByCSVParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the export store by csv params
func (o *ExportStoreByCSVParams) SetBody(body *platformclientmodels.ExportStoreToCSVRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the export store by csv params
func (o *ExportStoreByCSVParams) WithNamespace(namespace string) *ExportStoreByCSVParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export store by csv params
func (o *ExportStoreByCSVParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ExportStoreByCSVParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
