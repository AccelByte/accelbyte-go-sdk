// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions_with_namespace

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

// NewCreatePolicyVersion1Params creates a new CreatePolicyVersion1Params object
// with the default values initialized.
func NewCreatePolicyVersion1Params() *CreatePolicyVersion1Params {
	var ()
	return &CreatePolicyVersion1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePolicyVersion1ParamsWithTimeout creates a new CreatePolicyVersion1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePolicyVersion1ParamsWithTimeout(timeout time.Duration) *CreatePolicyVersion1Params {
	var ()
	return &CreatePolicyVersion1Params{

		timeout: timeout,
	}
}

// NewCreatePolicyVersion1ParamsWithContext creates a new CreatePolicyVersion1Params object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePolicyVersion1ParamsWithContext(ctx context.Context) *CreatePolicyVersion1Params {
	var ()
	return &CreatePolicyVersion1Params{

		Context: ctx,
	}
}

// NewCreatePolicyVersion1ParamsWithHTTPClient creates a new CreatePolicyVersion1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePolicyVersion1ParamsWithHTTPClient(client *http.Client) *CreatePolicyVersion1Params {
	var ()
	return &CreatePolicyVersion1Params{
		HTTPClient: client,
	}
}

/*CreatePolicyVersion1Params contains all the parameters to send to the API endpoint
for the create policy version 1 operation typically these are written to a http.Request
*/
type CreatePolicyVersion1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.CreatePolicyVersionRequest
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PolicyID
	  Policy Id

	*/
	PolicyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create policy version 1 params
func (o *CreatePolicyVersion1Params) WithTimeout(timeout time.Duration) *CreatePolicyVersion1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create policy version 1 params
func (o *CreatePolicyVersion1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create policy version 1 params
func (o *CreatePolicyVersion1Params) WithContext(ctx context.Context) *CreatePolicyVersion1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create policy version 1 params
func (o *CreatePolicyVersion1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create policy version 1 params
func (o *CreatePolicyVersion1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create policy version 1 params
func (o *CreatePolicyVersion1Params) WithHTTPClient(client *http.Client) *CreatePolicyVersion1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create policy version 1 params
func (o *CreatePolicyVersion1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create policy version 1 params
func (o *CreatePolicyVersion1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create policy version 1 params
func (o *CreatePolicyVersion1Params) WithBody(body *legalclientmodels.CreatePolicyVersionRequest) *CreatePolicyVersion1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create policy version 1 params
func (o *CreatePolicyVersion1Params) SetBody(body *legalclientmodels.CreatePolicyVersionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create policy version 1 params
func (o *CreatePolicyVersion1Params) WithNamespace(namespace string) *CreatePolicyVersion1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create policy version 1 params
func (o *CreatePolicyVersion1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyID adds the policyID to the create policy version 1 params
func (o *CreatePolicyVersion1Params) WithPolicyID(policyID string) *CreatePolicyVersion1Params {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the create policy version 1 params
func (o *CreatePolicyVersion1Params) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePolicyVersion1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param policyId
	if err := r.SetPathParam("policyId", o.PolicyID); err != nil {
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
