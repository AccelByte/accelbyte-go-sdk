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

// NewUpdateLocalizedPolicyVersion1Params creates a new UpdateLocalizedPolicyVersion1Params object
// with the default values initialized.
func NewUpdateLocalizedPolicyVersion1Params() *UpdateLocalizedPolicyVersion1Params {
	var ()
	return &UpdateLocalizedPolicyVersion1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateLocalizedPolicyVersion1ParamsWithTimeout creates a new UpdateLocalizedPolicyVersion1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateLocalizedPolicyVersion1ParamsWithTimeout(timeout time.Duration) *UpdateLocalizedPolicyVersion1Params {
	var ()
	return &UpdateLocalizedPolicyVersion1Params{

		timeout: timeout,
	}
}

// NewUpdateLocalizedPolicyVersion1ParamsWithContext creates a new UpdateLocalizedPolicyVersion1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateLocalizedPolicyVersion1ParamsWithContext(ctx context.Context) *UpdateLocalizedPolicyVersion1Params {
	var ()
	return &UpdateLocalizedPolicyVersion1Params{

		Context: ctx,
	}
}

// NewUpdateLocalizedPolicyVersion1ParamsWithHTTPClient creates a new UpdateLocalizedPolicyVersion1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateLocalizedPolicyVersion1ParamsWithHTTPClient(client *http.Client) *UpdateLocalizedPolicyVersion1Params {
	var ()
	return &UpdateLocalizedPolicyVersion1Params{
		HTTPClient: client,
	}
}

/*UpdateLocalizedPolicyVersion1Params contains all the parameters to send to the API endpoint
for the update localized policy version 1 operation typically these are written to a http.Request
*/
type UpdateLocalizedPolicyVersion1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdateLocalizedPolicyVersionRequest
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) WithTimeout(timeout time.Duration) *UpdateLocalizedPolicyVersion1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) WithContext(ctx context.Context) *UpdateLocalizedPolicyVersion1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) WithHTTPClient(client *http.Client) *UpdateLocalizedPolicyVersion1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateLocalizedPolicyVersion1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) WithBody(body *legalclientmodels.UpdateLocalizedPolicyVersionRequest) *UpdateLocalizedPolicyVersion1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) SetBody(body *legalclientmodels.UpdateLocalizedPolicyVersionRequest) {
	o.Body = body
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *UpdateLocalizedPolicyVersion1Params {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WithNamespace adds the namespace to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) WithNamespace(namespace string) *UpdateLocalizedPolicyVersion1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update localized policy version 1 params
func (o *UpdateLocalizedPolicyVersion1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateLocalizedPolicyVersion1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
