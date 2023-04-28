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
)

// NewRetrieveSingleLocalizedPolicyVersion3Params creates a new RetrieveSingleLocalizedPolicyVersion3Params object
// with the default values initialized.
func NewRetrieveSingleLocalizedPolicyVersion3Params() *RetrieveSingleLocalizedPolicyVersion3Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion3ParamsWithTimeout creates a new RetrieveSingleLocalizedPolicyVersion3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSingleLocalizedPolicyVersion3ParamsWithTimeout(timeout time.Duration) *RetrieveSingleLocalizedPolicyVersion3Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion3Params{

		timeout: timeout,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion3ParamsWithContext creates a new RetrieveSingleLocalizedPolicyVersion3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSingleLocalizedPolicyVersion3ParamsWithContext(ctx context.Context) *RetrieveSingleLocalizedPolicyVersion3Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion3Params{

		Context: ctx,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion3ParamsWithHTTPClient creates a new RetrieveSingleLocalizedPolicyVersion3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSingleLocalizedPolicyVersion3ParamsWithHTTPClient(client *http.Client) *RetrieveSingleLocalizedPolicyVersion3Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion3Params{
		HTTPClient: client,
	}
}

/*RetrieveSingleLocalizedPolicyVersion3Params contains all the parameters to send to the API endpoint
for the retrieve single localized policy version 3 operation typically these are written to a http.Request
*/
type RetrieveSingleLocalizedPolicyVersion3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) WithTimeout(timeout time.Duration) *RetrieveSingleLocalizedPolicyVersion3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) WithContext(ctx context.Context) *RetrieveSingleLocalizedPolicyVersion3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) WithHTTPClient(client *http.Client) *RetrieveSingleLocalizedPolicyVersion3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *RetrieveSingleLocalizedPolicyVersion3Params {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WithNamespace adds the namespace to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) WithNamespace(namespace string) *RetrieveSingleLocalizedPolicyVersion3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve single localized policy version 3 params
func (o *RetrieveSingleLocalizedPolicyVersion3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSingleLocalizedPolicyVersion3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
