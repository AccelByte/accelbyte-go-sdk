// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package third_party_credential

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewUpdateThirdPartyLoginPlatformDomainV3Params creates a new UpdateThirdPartyLoginPlatformDomainV3Params object
// with the default values initialized.
func NewUpdateThirdPartyLoginPlatformDomainV3Params() *UpdateThirdPartyLoginPlatformDomainV3Params {
	var ()
	return &UpdateThirdPartyLoginPlatformDomainV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateThirdPartyLoginPlatformDomainV3ParamsWithTimeout creates a new UpdateThirdPartyLoginPlatformDomainV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateThirdPartyLoginPlatformDomainV3ParamsWithTimeout(timeout time.Duration) *UpdateThirdPartyLoginPlatformDomainV3Params {
	var ()
	return &UpdateThirdPartyLoginPlatformDomainV3Params{

		timeout: timeout,
	}
}

// NewUpdateThirdPartyLoginPlatformDomainV3ParamsWithContext creates a new UpdateThirdPartyLoginPlatformDomainV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateThirdPartyLoginPlatformDomainV3ParamsWithContext(ctx context.Context) *UpdateThirdPartyLoginPlatformDomainV3Params {
	var ()
	return &UpdateThirdPartyLoginPlatformDomainV3Params{

		Context: ctx,
	}
}

// NewUpdateThirdPartyLoginPlatformDomainV3ParamsWithHTTPClient creates a new UpdateThirdPartyLoginPlatformDomainV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateThirdPartyLoginPlatformDomainV3ParamsWithHTTPClient(client *http.Client) *UpdateThirdPartyLoginPlatformDomainV3Params {
	var ()
	return &UpdateThirdPartyLoginPlatformDomainV3Params{
		HTTPClient: client,
	}
}

/*UpdateThirdPartyLoginPlatformDomainV3Params contains all the parameters to send to the API endpoint
for the update third party login platform domain v3 operation typically these are written to a http.Request
*/
type UpdateThirdPartyLoginPlatformDomainV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelPlatformDomainUpdateRequest
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
}

// WithTimeout adds the timeout to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) WithTimeout(timeout time.Duration) *UpdateThirdPartyLoginPlatformDomainV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) WithContext(ctx context.Context) *UpdateThirdPartyLoginPlatformDomainV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) WithHTTPClient(client *http.Client) *UpdateThirdPartyLoginPlatformDomainV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) WithBody(body *iamclientmodels.ModelPlatformDomainUpdateRequest) *UpdateThirdPartyLoginPlatformDomainV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) SetBody(body *iamclientmodels.ModelPlatformDomainUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) WithNamespace(namespace string) *UpdateThirdPartyLoginPlatformDomainV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) WithPlatformID(platformID string) *UpdateThirdPartyLoginPlatformDomainV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the update third party login platform domain v3 params
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateThirdPartyLoginPlatformDomainV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
