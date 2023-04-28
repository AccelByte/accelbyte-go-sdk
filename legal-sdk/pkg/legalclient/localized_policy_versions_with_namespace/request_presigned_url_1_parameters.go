// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewRequestPresignedURL1Params creates a new RequestPresignedURL1Params object
// with the default values initialized.
func NewRequestPresignedURL1Params() *RequestPresignedURL1Params {
	var ()
	return &RequestPresignedURL1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestPresignedURL1ParamsWithTimeout creates a new RequestPresignedURL1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestPresignedURL1ParamsWithTimeout(timeout time.Duration) *RequestPresignedURL1Params {
	var ()
	return &RequestPresignedURL1Params{

		timeout: timeout,
	}
}

// NewRequestPresignedURL1ParamsWithContext creates a new RequestPresignedURL1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRequestPresignedURL1ParamsWithContext(ctx context.Context) *RequestPresignedURL1Params {
	var ()
	return &RequestPresignedURL1Params{

		Context: ctx,
	}
}

// NewRequestPresignedURL1ParamsWithHTTPClient creates a new RequestPresignedURL1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestPresignedURL1ParamsWithHTTPClient(client *http.Client) *RequestPresignedURL1Params {
	var ()
	return &RequestPresignedURL1Params{
		HTTPClient: client,
	}
}

/*RequestPresignedURL1Params contains all the parameters to send to the API endpoint
for the request presigned url 1 operation typically these are written to a http.Request
*/
type RequestPresignedURL1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UploadPolicyVersionAttachmentRequest
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the request presigned url 1 params
func (o *RequestPresignedURL1Params) WithTimeout(timeout time.Duration) *RequestPresignedURL1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request presigned url 1 params
func (o *RequestPresignedURL1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request presigned url 1 params
func (o *RequestPresignedURL1Params) WithContext(ctx context.Context) *RequestPresignedURL1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request presigned url 1 params
func (o *RequestPresignedURL1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request presigned url 1 params
func (o *RequestPresignedURL1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request presigned url 1 params
func (o *RequestPresignedURL1Params) WithHTTPClient(client *http.Client) *RequestPresignedURL1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request presigned url 1 params
func (o *RequestPresignedURL1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request presigned url 1 params
func (o *RequestPresignedURL1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the request presigned url 1 params
func (o *RequestPresignedURL1Params) WithBody(body *legalclientmodels.UploadPolicyVersionAttachmentRequest) *RequestPresignedURL1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the request presigned url 1 params
func (o *RequestPresignedURL1Params) SetBody(body *legalclientmodels.UploadPolicyVersionAttachmentRequest) {
	o.Body = body
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the request presigned url 1 params
func (o *RequestPresignedURL1Params) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *RequestPresignedURL1Params {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the request presigned url 1 params
func (o *RequestPresignedURL1Params) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WithNamespace adds the namespace to the request presigned url 1 params
func (o *RequestPresignedURL1Params) WithNamespace(namespace string) *RequestPresignedURL1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the request presigned url 1 params
func (o *RequestPresignedURL1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RequestPresignedURL1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param localizedPolicyVersionId
	if err := r.SetPathParam("localizedPolicyVersionId", o.LocalizedPolicyVersionID); err != nil {
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
