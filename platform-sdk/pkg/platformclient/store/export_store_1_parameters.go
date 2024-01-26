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

// NewExportStore1Params creates a new ExportStore1Params object
// with the default values initialized.
func NewExportStore1Params() *ExportStore1Params {
	var ()
	return &ExportStore1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportStore1ParamsWithTimeout creates a new ExportStore1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportStore1ParamsWithTimeout(timeout time.Duration) *ExportStore1Params {
	var ()
	return &ExportStore1Params{

		timeout: timeout,
	}
}

// NewExportStore1ParamsWithContext creates a new ExportStore1Params object
// with the default values initialized, and the ability to set a context for a request
func NewExportStore1ParamsWithContext(ctx context.Context) *ExportStore1Params {
	var ()
	return &ExportStore1Params{

		Context: ctx,
	}
}

// NewExportStore1ParamsWithHTTPClient creates a new ExportStore1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportStore1ParamsWithHTTPClient(client *http.Client) *ExportStore1Params {
	var ()
	return &ExportStore1Params{
		HTTPClient: client,
	}
}

/*ExportStore1Params contains all the parameters to send to the API endpoint
for the export store 1 operation typically these are written to a http.Request
*/
type ExportStore1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ExportStoreRequest
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the export store 1 params
func (o *ExportStore1Params) WithTimeout(timeout time.Duration) *ExportStore1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export store 1 params
func (o *ExportStore1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export store 1 params
func (o *ExportStore1Params) WithContext(ctx context.Context) *ExportStore1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export store 1 params
func (o *ExportStore1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export store 1 params
func (o *ExportStore1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export store 1 params
func (o *ExportStore1Params) WithHTTPClient(client *http.Client) *ExportStore1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export store 1 params
func (o *ExportStore1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export store 1 params
func (o *ExportStore1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ExportStore1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the export store 1 params
func (o *ExportStore1Params) WithBody(body *platformclientmodels.ExportStoreRequest) *ExportStore1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the export store 1 params
func (o *ExportStore1Params) SetBody(body *platformclientmodels.ExportStoreRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the export store 1 params
func (o *ExportStore1Params) WithNamespace(namespace string) *ExportStore1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export store 1 params
func (o *ExportStore1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the export store 1 params
func (o *ExportStore1Params) WithStoreID(storeID string) *ExportStore1Params {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the export store 1 params
func (o *ExportStore1Params) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *ExportStore1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
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
