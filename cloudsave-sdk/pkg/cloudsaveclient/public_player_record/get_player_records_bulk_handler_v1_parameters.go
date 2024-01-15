// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewGetPlayerRecordsBulkHandlerV1Params creates a new GetPlayerRecordsBulkHandlerV1Params object
// with the default values initialized.
func NewGetPlayerRecordsBulkHandlerV1Params() *GetPlayerRecordsBulkHandlerV1Params {
	var ()
	return &GetPlayerRecordsBulkHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPlayerRecordsBulkHandlerV1ParamsWithTimeout creates a new GetPlayerRecordsBulkHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPlayerRecordsBulkHandlerV1ParamsWithTimeout(timeout time.Duration) *GetPlayerRecordsBulkHandlerV1Params {
	var ()
	return &GetPlayerRecordsBulkHandlerV1Params{

		timeout: timeout,
	}
}

// NewGetPlayerRecordsBulkHandlerV1ParamsWithContext creates a new GetPlayerRecordsBulkHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetPlayerRecordsBulkHandlerV1ParamsWithContext(ctx context.Context) *GetPlayerRecordsBulkHandlerV1Params {
	var ()
	return &GetPlayerRecordsBulkHandlerV1Params{

		Context: ctx,
	}
}

// NewGetPlayerRecordsBulkHandlerV1ParamsWithHTTPClient creates a new GetPlayerRecordsBulkHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPlayerRecordsBulkHandlerV1ParamsWithHTTPClient(client *http.Client) *GetPlayerRecordsBulkHandlerV1Params {
	var ()
	return &GetPlayerRecordsBulkHandlerV1Params{
		HTTPClient: client,
	}
}

/*GetPlayerRecordsBulkHandlerV1Params contains all the parameters to send to the API endpoint
for the get player records bulk handler v1 operation typically these are written to a http.Request
*/
type GetPlayerRecordsBulkHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) WithTimeout(timeout time.Duration) *GetPlayerRecordsBulkHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) WithContext(ctx context.Context) *GetPlayerRecordsBulkHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) WithHTTPClient(client *http.Client) *GetPlayerRecordsBulkHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest) *GetPlayerRecordsBulkHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) WithNamespace(namespace string) *GetPlayerRecordsBulkHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get player records bulk handler v1 params
func (o *GetPlayerRecordsBulkHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPlayerRecordsBulkHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
