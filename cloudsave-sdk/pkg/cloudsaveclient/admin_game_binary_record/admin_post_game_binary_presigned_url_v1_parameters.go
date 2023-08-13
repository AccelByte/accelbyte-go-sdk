// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_game_binary_record

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

// NewAdminPostGameBinaryPresignedURLV1Params creates a new AdminPostGameBinaryPresignedURLV1Params object
// with the default values initialized.
func NewAdminPostGameBinaryPresignedURLV1Params() *AdminPostGameBinaryPresignedURLV1Params {
	var ()
	return &AdminPostGameBinaryPresignedURLV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPostGameBinaryPresignedURLV1ParamsWithTimeout creates a new AdminPostGameBinaryPresignedURLV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPostGameBinaryPresignedURLV1ParamsWithTimeout(timeout time.Duration) *AdminPostGameBinaryPresignedURLV1Params {
	var ()
	return &AdminPostGameBinaryPresignedURLV1Params{

		timeout: timeout,
	}
}

// NewAdminPostGameBinaryPresignedURLV1ParamsWithContext creates a new AdminPostGameBinaryPresignedURLV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPostGameBinaryPresignedURLV1ParamsWithContext(ctx context.Context) *AdminPostGameBinaryPresignedURLV1Params {
	var ()
	return &AdminPostGameBinaryPresignedURLV1Params{

		Context: ctx,
	}
}

// NewAdminPostGameBinaryPresignedURLV1ParamsWithHTTPClient creates a new AdminPostGameBinaryPresignedURLV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPostGameBinaryPresignedURLV1ParamsWithHTTPClient(client *http.Client) *AdminPostGameBinaryPresignedURLV1Params {
	var ()
	return &AdminPostGameBinaryPresignedURLV1Params{
		HTTPClient: client,
	}
}

/*AdminPostGameBinaryPresignedURLV1Params contains all the parameters to send to the API endpoint
for the admin post game binary presigned urlv1 operation typically these are written to a http.Request
*/
type AdminPostGameBinaryPresignedURLV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsUploadBinaryRecordRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) WithTimeout(timeout time.Duration) *AdminPostGameBinaryPresignedURLV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) WithContext(ctx context.Context) *AdminPostGameBinaryPresignedURLV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) WithHTTPClient(client *http.Client) *AdminPostGameBinaryPresignedURLV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) WithBody(body *cloudsaveclientmodels.ModelsUploadBinaryRecordRequest) *AdminPostGameBinaryPresignedURLV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) SetBody(body *cloudsaveclientmodels.ModelsUploadBinaryRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) WithKey(key string) *AdminPostGameBinaryPresignedURLV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) WithNamespace(namespace string) *AdminPostGameBinaryPresignedURLV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin post game binary presigned urlv1 params
func (o *AdminPostGameBinaryPresignedURLV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPostGameBinaryPresignedURLV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
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
