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

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewUpdateLocalizedPolicyVersionParams creates a new UpdateLocalizedPolicyVersionParams object
// with the default values initialized.
func NewUpdateLocalizedPolicyVersionParams() *UpdateLocalizedPolicyVersionParams {
	var ()
	return &UpdateLocalizedPolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateLocalizedPolicyVersionParamsWithTimeout creates a new UpdateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateLocalizedPolicyVersionParamsWithTimeout(timeout time.Duration) *UpdateLocalizedPolicyVersionParams {
	var ()
	return &UpdateLocalizedPolicyVersionParams{

		timeout: timeout,
	}
}

// NewUpdateLocalizedPolicyVersionParamsWithContext creates a new UpdateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateLocalizedPolicyVersionParamsWithContext(ctx context.Context) *UpdateLocalizedPolicyVersionParams {
	var ()
	return &UpdateLocalizedPolicyVersionParams{

		Context: ctx,
	}
}

// NewUpdateLocalizedPolicyVersionParamsWithHTTPClient creates a new UpdateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateLocalizedPolicyVersionParamsWithHTTPClient(client *http.Client) *UpdateLocalizedPolicyVersionParams {
	var ()
	return &UpdateLocalizedPolicyVersionParams{
		HTTPClient: client,
	}
}

/*UpdateLocalizedPolicyVersionParams contains all the parameters to send to the API endpoint
for the update localized policy version operation typically these are written to a http.Request
*/
type UpdateLocalizedPolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdateLocalizedPolicyVersionRequest
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) WithTimeout(timeout time.Duration) *UpdateLocalizedPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) WithContext(ctx context.Context) *UpdateLocalizedPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) WithHTTPClient(client *http.Client) *UpdateLocalizedPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateLocalizedPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) WithBody(body *legalclientmodels.UpdateLocalizedPolicyVersionRequest) *UpdateLocalizedPolicyVersionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) SetBody(body *legalclientmodels.UpdateLocalizedPolicyVersionRequest) {
	o.Body = body
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *UpdateLocalizedPolicyVersionParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the update localized policy version params
func (o *UpdateLocalizedPolicyVersionParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateLocalizedPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
