// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions

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

// NewRetrieveSingleLocalizedPolicyVersion2Params creates a new RetrieveSingleLocalizedPolicyVersion2Params object
// with the default values initialized.
func NewRetrieveSingleLocalizedPolicyVersion2Params() *RetrieveSingleLocalizedPolicyVersion2Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion2ParamsWithTimeout creates a new RetrieveSingleLocalizedPolicyVersion2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSingleLocalizedPolicyVersion2ParamsWithTimeout(timeout time.Duration) *RetrieveSingleLocalizedPolicyVersion2Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion2Params{

		timeout: timeout,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion2ParamsWithContext creates a new RetrieveSingleLocalizedPolicyVersion2Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSingleLocalizedPolicyVersion2ParamsWithContext(ctx context.Context) *RetrieveSingleLocalizedPolicyVersion2Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion2Params{

		Context: ctx,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion2ParamsWithHTTPClient creates a new RetrieveSingleLocalizedPolicyVersion2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSingleLocalizedPolicyVersion2ParamsWithHTTPClient(client *http.Client) *RetrieveSingleLocalizedPolicyVersion2Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion2Params{
		HTTPClient: client,
	}
}

/*RetrieveSingleLocalizedPolicyVersion2Params contains all the parameters to send to the API endpoint
for the retrieve single localized policy version 2 operation typically these are written to a http.Request
*/
type RetrieveSingleLocalizedPolicyVersion2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) WithTimeout(timeout time.Duration) *RetrieveSingleLocalizedPolicyVersion2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) WithContext(ctx context.Context) *RetrieveSingleLocalizedPolicyVersion2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) WithHTTPClient(client *http.Client) *RetrieveSingleLocalizedPolicyVersion2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *RetrieveSingleLocalizedPolicyVersion2Params {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the retrieve single localized policy version 2 params
func (o *RetrieveSingleLocalizedPolicyVersion2Params) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSingleLocalizedPolicyVersion2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param localizedPolicyVersionId
	if err := r.SetPathParam("localizedPolicyVersionId", o.LocalizedPolicyVersionID); err != nil {
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
