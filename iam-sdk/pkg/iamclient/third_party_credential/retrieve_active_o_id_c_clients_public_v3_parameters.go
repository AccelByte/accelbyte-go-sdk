// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party_credential

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

// NewRetrieveActiveOIDCClientsPublicV3Params creates a new RetrieveActiveOIDCClientsPublicV3Params object
// with the default values initialized.
func NewRetrieveActiveOIDCClientsPublicV3Params() *RetrieveActiveOIDCClientsPublicV3Params {
	var ()
	return &RetrieveActiveOIDCClientsPublicV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveActiveOIDCClientsPublicV3ParamsWithTimeout creates a new RetrieveActiveOIDCClientsPublicV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveActiveOIDCClientsPublicV3ParamsWithTimeout(timeout time.Duration) *RetrieveActiveOIDCClientsPublicV3Params {
	var ()
	return &RetrieveActiveOIDCClientsPublicV3Params{

		timeout: timeout,
	}
}

// NewRetrieveActiveOIDCClientsPublicV3ParamsWithContext creates a new RetrieveActiveOIDCClientsPublicV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveActiveOIDCClientsPublicV3ParamsWithContext(ctx context.Context) *RetrieveActiveOIDCClientsPublicV3Params {
	var ()
	return &RetrieveActiveOIDCClientsPublicV3Params{

		Context: ctx,
	}
}

// NewRetrieveActiveOIDCClientsPublicV3ParamsWithHTTPClient creates a new RetrieveActiveOIDCClientsPublicV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveActiveOIDCClientsPublicV3ParamsWithHTTPClient(client *http.Client) *RetrieveActiveOIDCClientsPublicV3Params {
	var ()
	return &RetrieveActiveOIDCClientsPublicV3Params{
		HTTPClient: client,
	}
}

/*RetrieveActiveOIDCClientsPublicV3Params contains all the parameters to send to the API endpoint
for the retrieve active oidc clients public v3 operation typically these are written to a http.Request
*/
type RetrieveActiveOIDCClientsPublicV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*ClientID
	  Client ID

	*/
	ClientID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) WithTimeout(timeout time.Duration) *RetrieveActiveOIDCClientsPublicV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) WithContext(ctx context.Context) *RetrieveActiveOIDCClientsPublicV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) WithHTTPClient(client *http.Client) *RetrieveActiveOIDCClientsPublicV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) WithNamespace(namespace string) *RetrieveActiveOIDCClientsPublicV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithClientID adds the clientID to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) WithClientID(clientID string) *RetrieveActiveOIDCClientsPublicV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the retrieve active oidc clients public v3 params
func (o *RetrieveActiveOIDCClientsPublicV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveActiveOIDCClientsPublicV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param clientId
	qrClientID := o.ClientID
	qClientID := qrClientID
	if qClientID != "" {
		if err := r.SetQueryParam("clientId", qClientID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
