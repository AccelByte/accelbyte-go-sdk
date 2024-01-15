// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_game_binary_record

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

// NewPostGameBinaryRecordV1Params creates a new PostGameBinaryRecordV1Params object
// with the default values initialized.
func NewPostGameBinaryRecordV1Params() *PostGameBinaryRecordV1Params {
	var ()
	return &PostGameBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPostGameBinaryRecordV1ParamsWithTimeout creates a new PostGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPostGameBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *PostGameBinaryRecordV1Params {
	var ()
	return &PostGameBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewPostGameBinaryRecordV1ParamsWithContext creates a new PostGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPostGameBinaryRecordV1ParamsWithContext(ctx context.Context) *PostGameBinaryRecordV1Params {
	var ()
	return &PostGameBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewPostGameBinaryRecordV1ParamsWithHTTPClient creates a new PostGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPostGameBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *PostGameBinaryRecordV1Params {
	var ()
	return &PostGameBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*PostGameBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the post game binary record v1 operation typically these are written to a http.Request
*/
type PostGameBinaryRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsPublicGameBinaryRecordCreate
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) WithTimeout(timeout time.Duration) *PostGameBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) WithContext(ctx context.Context) *PostGameBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) WithHTTPClient(client *http.Client) *PostGameBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) WithBody(body *cloudsaveclientmodels.ModelsPublicGameBinaryRecordCreate) *PostGameBinaryRecordV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) SetBody(body *cloudsaveclientmodels.ModelsPublicGameBinaryRecordCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) WithNamespace(namespace string) *PostGameBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the post game binary record v1 params
func (o *PostGameBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PostGameBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
