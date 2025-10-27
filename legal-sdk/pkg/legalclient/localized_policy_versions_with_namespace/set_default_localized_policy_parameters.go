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

// NewSetDefaultLocalizedPolicyParams creates a new SetDefaultLocalizedPolicyParams object
// with the default values initialized.
func NewSetDefaultLocalizedPolicyParams() *SetDefaultLocalizedPolicyParams {
	var ()
	return &SetDefaultLocalizedPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetDefaultLocalizedPolicyParamsWithTimeout creates a new SetDefaultLocalizedPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetDefaultLocalizedPolicyParamsWithTimeout(timeout time.Duration) *SetDefaultLocalizedPolicyParams {
	var ()
	return &SetDefaultLocalizedPolicyParams{

		timeout: timeout,
	}
}

// NewSetDefaultLocalizedPolicyParamsWithContext creates a new SetDefaultLocalizedPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewSetDefaultLocalizedPolicyParamsWithContext(ctx context.Context) *SetDefaultLocalizedPolicyParams {
	var ()
	return &SetDefaultLocalizedPolicyParams{

		Context: ctx,
	}
}

// NewSetDefaultLocalizedPolicyParamsWithHTTPClient creates a new SetDefaultLocalizedPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetDefaultLocalizedPolicyParamsWithHTTPClient(client *http.Client) *SetDefaultLocalizedPolicyParams {
	var ()
	return &SetDefaultLocalizedPolicyParams{
		HTTPClient: client,
	}
}

/*SetDefaultLocalizedPolicyParams contains all the parameters to send to the API endpoint
for the set default localized policy operation typically these are written to a http.Request
*/
type SetDefaultLocalizedPolicyParams struct {

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

// WithTimeout adds the timeout to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) WithTimeout(timeout time.Duration) *SetDefaultLocalizedPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) WithContext(ctx context.Context) *SetDefaultLocalizedPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) WithHTTPClient(client *http.Client) *SetDefaultLocalizedPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SetDefaultLocalizedPolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *SetDefaultLocalizedPolicyParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WithNamespace adds the namespace to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) WithNamespace(namespace string) *SetDefaultLocalizedPolicyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the set default localized policy params
func (o *SetDefaultLocalizedPolicyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SetDefaultLocalizedPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
