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
)

// NewRetrieveSinglePolicyVersion1Params creates a new RetrieveSinglePolicyVersion1Params object
// with the default values initialized.
func NewRetrieveSinglePolicyVersion1Params() *RetrieveSinglePolicyVersion1Params {
	var ()
	return &RetrieveSinglePolicyVersion1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSinglePolicyVersion1ParamsWithTimeout creates a new RetrieveSinglePolicyVersion1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSinglePolicyVersion1ParamsWithTimeout(timeout time.Duration) *RetrieveSinglePolicyVersion1Params {
	var ()
	return &RetrieveSinglePolicyVersion1Params{

		timeout: timeout,
	}
}

// NewRetrieveSinglePolicyVersion1ParamsWithContext creates a new RetrieveSinglePolicyVersion1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSinglePolicyVersion1ParamsWithContext(ctx context.Context) *RetrieveSinglePolicyVersion1Params {
	var ()
	return &RetrieveSinglePolicyVersion1Params{

		Context: ctx,
	}
}

// NewRetrieveSinglePolicyVersion1ParamsWithHTTPClient creates a new RetrieveSinglePolicyVersion1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSinglePolicyVersion1ParamsWithHTTPClient(client *http.Client) *RetrieveSinglePolicyVersion1Params {
	var ()
	return &RetrieveSinglePolicyVersion1Params{
		HTTPClient: client,
	}
}

/*RetrieveSinglePolicyVersion1Params contains all the parameters to send to the API endpoint
for the retrieve single policy version 1 operation typically these are written to a http.Request
*/
type RetrieveSinglePolicyVersion1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PolicyID
	  Policy Id

	*/
	PolicyID string
	/*VersionID
	  Version Id

	*/
	VersionID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) WithTimeout(timeout time.Duration) *RetrieveSinglePolicyVersion1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) WithContext(ctx context.Context) *RetrieveSinglePolicyVersion1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) WithHTTPClient(client *http.Client) *RetrieveSinglePolicyVersion1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) WithNamespace(namespace string) *RetrieveSinglePolicyVersion1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyID adds the policyID to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) WithPolicyID(policyID string) *RetrieveSinglePolicyVersion1Params {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WithVersionID adds the versionID to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) WithVersionID(versionID *string) *RetrieveSinglePolicyVersion1Params {
	o.SetVersionID(versionID)
	return o
}

// SetVersionID adds the versionId to the retrieve single policy version 1 params
func (o *RetrieveSinglePolicyVersion1Params) SetVersionID(versionID *string) {
	o.VersionID = versionID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSinglePolicyVersion1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param policyId
	if err := r.SetPathParam("policyId", o.PolicyID); err != nil {
		return err
	}

	if o.VersionID != nil {

		// query param versionId
		var qrVersionID string
		if o.VersionID != nil {
			qrVersionID = *o.VersionID
		}
		qVersionID := qrVersionID
		if qVersionID != "" {
			if err := r.SetQueryParam("versionId", qVersionID); err != nil {
				return err
			}
		}

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
