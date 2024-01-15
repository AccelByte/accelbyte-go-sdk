// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_game_record

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

// NewGetGameRecordsBulkParams creates a new GetGameRecordsBulkParams object
// with the default values initialized.
func NewGetGameRecordsBulkParams() *GetGameRecordsBulkParams {
	var ()
	return &GetGameRecordsBulkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGameRecordsBulkParamsWithTimeout creates a new GetGameRecordsBulkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGameRecordsBulkParamsWithTimeout(timeout time.Duration) *GetGameRecordsBulkParams {
	var ()
	return &GetGameRecordsBulkParams{

		timeout: timeout,
	}
}

// NewGetGameRecordsBulkParamsWithContext creates a new GetGameRecordsBulkParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGameRecordsBulkParamsWithContext(ctx context.Context) *GetGameRecordsBulkParams {
	var ()
	return &GetGameRecordsBulkParams{

		Context: ctx,
	}
}

// NewGetGameRecordsBulkParamsWithHTTPClient creates a new GetGameRecordsBulkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGameRecordsBulkParamsWithHTTPClient(client *http.Client) *GetGameRecordsBulkParams {
	var ()
	return &GetGameRecordsBulkParams{
		HTTPClient: client,
	}
}

/*GetGameRecordsBulkParams contains all the parameters to send to the API endpoint
for the get game records bulk operation typically these are written to a http.Request
*/
type GetGameRecordsBulkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsBulkGetGameRecordRequest
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get game records bulk params
func (o *GetGameRecordsBulkParams) WithTimeout(timeout time.Duration) *GetGameRecordsBulkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get game records bulk params
func (o *GetGameRecordsBulkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get game records bulk params
func (o *GetGameRecordsBulkParams) WithContext(ctx context.Context) *GetGameRecordsBulkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get game records bulk params
func (o *GetGameRecordsBulkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get game records bulk params
func (o *GetGameRecordsBulkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get game records bulk params
func (o *GetGameRecordsBulkParams) WithHTTPClient(client *http.Client) *GetGameRecordsBulkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get game records bulk params
func (o *GetGameRecordsBulkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get game records bulk params
func (o *GetGameRecordsBulkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the get game records bulk params
func (o *GetGameRecordsBulkParams) WithBody(body *cloudsaveclientmodels.ModelsBulkGetGameRecordRequest) *GetGameRecordsBulkParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get game records bulk params
func (o *GetGameRecordsBulkParams) SetBody(body *cloudsaveclientmodels.ModelsBulkGetGameRecordRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the get game records bulk params
func (o *GetGameRecordsBulkParams) WithNamespace(namespace string) *GetGameRecordsBulkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get game records bulk params
func (o *GetGameRecordsBulkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetGameRecordsBulkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
