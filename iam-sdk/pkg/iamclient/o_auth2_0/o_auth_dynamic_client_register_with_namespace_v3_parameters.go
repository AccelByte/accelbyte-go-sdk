// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// NewOAuthDynamicClientRegisterWithNamespaceV3Params creates a new OAuthDynamicClientRegisterWithNamespaceV3Params object
// with the default values initialized.
func NewOAuthDynamicClientRegisterWithNamespaceV3Params() *OAuthDynamicClientRegisterWithNamespaceV3Params {
	var ()
	return &OAuthDynamicClientRegisterWithNamespaceV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewOAuthDynamicClientRegisterWithNamespaceV3ParamsWithTimeout creates a new OAuthDynamicClientRegisterWithNamespaceV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewOAuthDynamicClientRegisterWithNamespaceV3ParamsWithTimeout(timeout time.Duration) *OAuthDynamicClientRegisterWithNamespaceV3Params {
	var ()
	return &OAuthDynamicClientRegisterWithNamespaceV3Params{

		timeout: timeout,
	}
}

// NewOAuthDynamicClientRegisterWithNamespaceV3ParamsWithContext creates a new OAuthDynamicClientRegisterWithNamespaceV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewOAuthDynamicClientRegisterWithNamespaceV3ParamsWithContext(ctx context.Context) *OAuthDynamicClientRegisterWithNamespaceV3Params {
	var ()
	return &OAuthDynamicClientRegisterWithNamespaceV3Params{

		Context: ctx,
	}
}

// NewOAuthDynamicClientRegisterWithNamespaceV3ParamsWithHTTPClient creates a new OAuthDynamicClientRegisterWithNamespaceV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOAuthDynamicClientRegisterWithNamespaceV3ParamsWithHTTPClient(client *http.Client) *OAuthDynamicClientRegisterWithNamespaceV3Params {
	var ()
	return &OAuthDynamicClientRegisterWithNamespaceV3Params{
		HTTPClient: client,
	}
}

/*OAuthDynamicClientRegisterWithNamespaceV3Params contains all the parameters to send to the API endpoint
for the o auth dynamic client register with namespace v3 operation typically these are written to a http.Request
*/
type OAuthDynamicClientRegisterWithNamespaceV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.OauthmodelClientRegistrationRequest
	/*Namespace
	  Accepts alphanumeric, with hyphens allowed between segments

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) WithTimeout(timeout time.Duration) *OAuthDynamicClientRegisterWithNamespaceV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) WithContext(ctx context.Context) *OAuthDynamicClientRegisterWithNamespaceV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) WithHTTPClient(client *http.Client) *OAuthDynamicClientRegisterWithNamespaceV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) WithBody(body *iamclientmodels.OauthmodelClientRegistrationRequest) *OAuthDynamicClientRegisterWithNamespaceV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) SetBody(body *iamclientmodels.OauthmodelClientRegistrationRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) WithNamespace(namespace string) *OAuthDynamicClientRegisterWithNamespaceV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the o auth dynamic client register with namespace v3 params
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *OAuthDynamicClientRegisterWithNamespaceV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
