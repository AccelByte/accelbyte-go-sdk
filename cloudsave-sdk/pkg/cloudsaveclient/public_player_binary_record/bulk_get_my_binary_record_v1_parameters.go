// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

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

// NewBulkGetMyBinaryRecordV1Params creates a new BulkGetMyBinaryRecordV1Params object
// with the default values initialized.
func NewBulkGetMyBinaryRecordV1Params() *BulkGetMyBinaryRecordV1Params {
	var ()
	return &BulkGetMyBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkGetMyBinaryRecordV1ParamsWithTimeout creates a new BulkGetMyBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkGetMyBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *BulkGetMyBinaryRecordV1Params {
	var ()
	return &BulkGetMyBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewBulkGetMyBinaryRecordV1ParamsWithContext creates a new BulkGetMyBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewBulkGetMyBinaryRecordV1ParamsWithContext(ctx context.Context) *BulkGetMyBinaryRecordV1Params {
	var ()
	return &BulkGetMyBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewBulkGetMyBinaryRecordV1ParamsWithHTTPClient creates a new BulkGetMyBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkGetMyBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *BulkGetMyBinaryRecordV1Params {
	var ()
	return &BulkGetMyBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*BulkGetMyBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the bulk get my binary record v1 operation typically these are written to a http.Request
*/
type BulkGetMyBinaryRecordV1Params struct {

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

// WithTimeout adds the timeout to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) WithTimeout(timeout time.Duration) *BulkGetMyBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) WithContext(ctx context.Context) *BulkGetMyBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) WithHTTPClient(client *http.Client) *BulkGetMyBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) WithBody(body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest) *BulkGetMyBinaryRecordV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) SetBody(body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) WithNamespace(namespace string) *BulkGetMyBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk get my binary record v1 params
func (o *BulkGetMyBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkGetMyBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
