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

// NewPublicRetrieveSingleLocalizedPolicyVersionParams creates a new PublicRetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized.
func NewPublicRetrieveSingleLocalizedPolicyVersionParams() *PublicRetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &PublicRetrieveSingleLocalizedPolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicRetrieveSingleLocalizedPolicyVersionParamsWithTimeout creates a new PublicRetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicRetrieveSingleLocalizedPolicyVersionParamsWithTimeout(timeout time.Duration) *PublicRetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &PublicRetrieveSingleLocalizedPolicyVersionParams{

		timeout: timeout,
	}
}

// NewPublicRetrieveSingleLocalizedPolicyVersionParamsWithContext creates a new PublicRetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicRetrieveSingleLocalizedPolicyVersionParamsWithContext(ctx context.Context) *PublicRetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &PublicRetrieveSingleLocalizedPolicyVersionParams{

		Context: ctx,
	}
}

// NewPublicRetrieveSingleLocalizedPolicyVersionParamsWithHTTPClient creates a new PublicRetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicRetrieveSingleLocalizedPolicyVersionParamsWithHTTPClient(client *http.Client) *PublicRetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &PublicRetrieveSingleLocalizedPolicyVersionParams{
		HTTPClient: client,
	}
}

/*PublicRetrieveSingleLocalizedPolicyVersionParams contains all the parameters to send to the API endpoint
for the public retrieve single localized policy version operation typically these are written to a http.Request
*/
type PublicRetrieveSingleLocalizedPolicyVersionParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) WithTimeout(timeout time.Duration) *PublicRetrieveSingleLocalizedPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) WithContext(ctx context.Context) *PublicRetrieveSingleLocalizedPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) WithHTTPClient(client *http.Client) *PublicRetrieveSingleLocalizedPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *PublicRetrieveSingleLocalizedPolicyVersionParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WithNamespace adds the namespace to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) WithNamespace(namespace string) *PublicRetrieveSingleLocalizedPolicyVersionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public retrieve single localized policy version params
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicRetrieveSingleLocalizedPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
