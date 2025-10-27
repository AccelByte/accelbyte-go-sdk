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

// NewCreateLocalizedPolicyVersionParams creates a new CreateLocalizedPolicyVersionParams object
// with the default values initialized.
func NewCreateLocalizedPolicyVersionParams() *CreateLocalizedPolicyVersionParams {
	var ()
	return &CreateLocalizedPolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateLocalizedPolicyVersionParamsWithTimeout creates a new CreateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateLocalizedPolicyVersionParamsWithTimeout(timeout time.Duration) *CreateLocalizedPolicyVersionParams {
	var ()
	return &CreateLocalizedPolicyVersionParams{

		timeout: timeout,
	}
}

// NewCreateLocalizedPolicyVersionParamsWithContext creates a new CreateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateLocalizedPolicyVersionParamsWithContext(ctx context.Context) *CreateLocalizedPolicyVersionParams {
	var ()
	return &CreateLocalizedPolicyVersionParams{

		Context: ctx,
	}
}

// NewCreateLocalizedPolicyVersionParamsWithHTTPClient creates a new CreateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateLocalizedPolicyVersionParamsWithHTTPClient(client *http.Client) *CreateLocalizedPolicyVersionParams {
	var ()
	return &CreateLocalizedPolicyVersionParams{
		HTTPClient: client,
	}
}

/*CreateLocalizedPolicyVersionParams contains all the parameters to send to the API endpoint
for the create localized policy version operation typically these are written to a http.Request
*/
type CreateLocalizedPolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.CreateLocalizedPolicyVersionRequest
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PolicyVersionID
	  Policy Version Id

	*/
	PolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) WithTimeout(timeout time.Duration) *CreateLocalizedPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) WithContext(ctx context.Context) *CreateLocalizedPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) WithHTTPClient(client *http.Client) *CreateLocalizedPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateLocalizedPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) WithBody(body *legalclientmodels.CreateLocalizedPolicyVersionRequest) *CreateLocalizedPolicyVersionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) SetBody(body *legalclientmodels.CreateLocalizedPolicyVersionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) WithNamespace(namespace string) *CreateLocalizedPolicyVersionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyVersionID adds the policyVersionID to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) WithPolicyVersionID(policyVersionID string) *CreateLocalizedPolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the create localized policy version params
func (o *CreateLocalizedPolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateLocalizedPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param policyVersionId
	if err := r.SetPathParam("policyVersionId", o.PolicyVersionID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
