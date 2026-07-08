// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// Deprecated: 2025-07-16 - Use PublicWebReauthPlatformOperation<EnumValue>Constant instead.
// Get the enum in PublicWebReauthPlatformParams
const (
	PublicWebReauthPlatformGDPRConstant = "GDPR"
	PublicWebReauthPlatformLINKConstant = "LINK"
)

// Get the enum in PublicWebReauthPlatformParams
const (
	PublicWebReauthPlatformOperationGDPRConstant = "GDPR"
	PublicWebReauthPlatformOperationLINKConstant = "LINK"
)

// NewPublicWebReauthPlatformParams creates a new PublicWebReauthPlatformParams object
// with the default values initialized.
func NewPublicWebReauthPlatformParams() *PublicWebReauthPlatformParams {
	var ()
	return &PublicWebReauthPlatformParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicWebReauthPlatformParamsWithTimeout creates a new PublicWebReauthPlatformParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicWebReauthPlatformParamsWithTimeout(timeout time.Duration) *PublicWebReauthPlatformParams {
	var ()
	return &PublicWebReauthPlatformParams{

		timeout: timeout,
	}
}

// NewPublicWebReauthPlatformParamsWithContext creates a new PublicWebReauthPlatformParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicWebReauthPlatformParamsWithContext(ctx context.Context) *PublicWebReauthPlatformParams {
	var ()
	return &PublicWebReauthPlatformParams{

		Context: ctx,
	}
}

// NewPublicWebReauthPlatformParamsWithHTTPClient creates a new PublicWebReauthPlatformParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicWebReauthPlatformParamsWithHTTPClient(client *http.Client) *PublicWebReauthPlatformParams {
	var ()
	return &PublicWebReauthPlatformParams{
		HTTPClient: client,
	}
}

/*PublicWebReauthPlatformParams contains all the parameters to send to the API endpoint
for the public web reauth platform operation typically these are written to a http.Request
*/
type PublicWebReauthPlatformParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Accepts alphanumeric, with hyphens allowed between segments

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*ClientID
	  Client ID

	*/
	ClientID *string
	/*RedirectURI
	  Redirect URI

	*/
	RedirectURI *string
	/*Operation
	    Re-auth operation.
				**GDPR**: obtain a **gdpr_token** cookie after re-authentication completes.
				**LINK**: perform a platform account link.

	*/
	Operation string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) WithTimeout(timeout time.Duration) *PublicWebReauthPlatformParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) WithContext(ctx context.Context) *PublicWebReauthPlatformParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) WithHTTPClient(client *http.Client) *PublicWebReauthPlatformParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicWebReauthPlatformParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) WithNamespace(namespace string) *PublicWebReauthPlatformParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) WithPlatformID(platformID string) *PublicWebReauthPlatformParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithClientID adds the clientID to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) WithClientID(clientID *string) *PublicWebReauthPlatformParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetClientID(clientID *string) {
	o.ClientID = clientID
}

// WithRedirectURI adds the redirectURI to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) WithRedirectURI(redirectURI *string) *PublicWebReauthPlatformParams {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetRedirectURI(redirectURI *string) {
	o.RedirectURI = redirectURI
}

// WithOperation adds the operation to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) WithOperation(operation string) *PublicWebReauthPlatformParams {
	o.SetOperation(operation)
	return o
}

// SetOperation adds the operation to the public web reauth platform params
func (o *PublicWebReauthPlatformParams) SetOperation(operation string) {
	o.Operation = operation
}

// WriteToRequest writes these params to a swagger request
func (o *PublicWebReauthPlatformParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.ClientID != nil {

		// query param clientId
		var qrClientID string
		if o.ClientID != nil {
			qrClientID = *o.ClientID
		}
		qClientID := qrClientID
		if qClientID != "" {
			if err := r.SetQueryParam("clientId", qClientID); err != nil {
				return err
			}
		}

	}

	if o.RedirectURI != nil {

		// query param redirectUri
		var qrRedirectURI string
		if o.RedirectURI != nil {
			qrRedirectURI = *o.RedirectURI
		}
		qRedirectURI := qrRedirectURI
		if qRedirectURI != "" {
			if err := r.SetQueryParam("redirectUri", qRedirectURI); err != nil {
				return err
			}
		}

	}

	// query param operation
	qrOperation := o.Operation
	qOperation := qrOperation
	if qOperation != "" {
		if err := r.SetQueryParam("operation", qOperation); err != nil {
			return err
		}
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
