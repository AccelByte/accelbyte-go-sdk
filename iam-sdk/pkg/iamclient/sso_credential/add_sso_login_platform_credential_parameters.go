// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso_credential

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAddSSOLoginPlatformCredentialParams creates a new AddSSOLoginPlatformCredentialParams object
// with the default values initialized.
func NewAddSSOLoginPlatformCredentialParams() *AddSSOLoginPlatformCredentialParams {
	var ()
	return &AddSSOLoginPlatformCredentialParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddSSOLoginPlatformCredentialParamsWithTimeout creates a new AddSSOLoginPlatformCredentialParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddSSOLoginPlatformCredentialParamsWithTimeout(timeout time.Duration) *AddSSOLoginPlatformCredentialParams {
	var ()
	return &AddSSOLoginPlatformCredentialParams{

		timeout: timeout,
	}
}

// NewAddSSOLoginPlatformCredentialParamsWithContext creates a new AddSSOLoginPlatformCredentialParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddSSOLoginPlatformCredentialParamsWithContext(ctx context.Context) *AddSSOLoginPlatformCredentialParams {
	var ()
	return &AddSSOLoginPlatformCredentialParams{

		Context: ctx,
	}
}

// NewAddSSOLoginPlatformCredentialParamsWithHTTPClient creates a new AddSSOLoginPlatformCredentialParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddSSOLoginPlatformCredentialParamsWithHTTPClient(client *http.Client) *AddSSOLoginPlatformCredentialParams {
	var ()
	return &AddSSOLoginPlatformCredentialParams{
		HTTPClient: client,
	}
}

/*AddSSOLoginPlatformCredentialParams contains all the parameters to send to the API endpoint
for the add sso login platform credential operation typically these are written to a http.Request
*/
type AddSSOLoginPlatformCredentialParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelSSOPlatformCredentialRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) WithTimeout(timeout time.Duration) *AddSSOLoginPlatformCredentialParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) WithContext(ctx context.Context) *AddSSOLoginPlatformCredentialParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) WithHTTPClient(client *http.Client) *AddSSOLoginPlatformCredentialParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddSSOLoginPlatformCredentialParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) WithBody(body *iamclientmodels.ModelSSOPlatformCredentialRequest) *AddSSOLoginPlatformCredentialParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) SetBody(body *iamclientmodels.ModelSSOPlatformCredentialRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) WithNamespace(namespace string) *AddSSOLoginPlatformCredentialParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) WithPlatformID(platformID string) *AddSSOLoginPlatformCredentialParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the add sso login platform credential params
func (o *AddSSOLoginPlatformCredentialParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *AddSSOLoginPlatformCredentialParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
