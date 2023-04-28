// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

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

// NewAdminUpdateClientPermissionV3Params creates a new AdminUpdateClientPermissionV3Params object
// with the default values initialized.
func NewAdminUpdateClientPermissionV3Params() *AdminUpdateClientPermissionV3Params {
	var ()
	return &AdminUpdateClientPermissionV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateClientPermissionV3ParamsWithTimeout creates a new AdminUpdateClientPermissionV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateClientPermissionV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateClientPermissionV3Params {
	var ()
	return &AdminUpdateClientPermissionV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateClientPermissionV3ParamsWithContext creates a new AdminUpdateClientPermissionV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateClientPermissionV3ParamsWithContext(ctx context.Context) *AdminUpdateClientPermissionV3Params {
	var ()
	return &AdminUpdateClientPermissionV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateClientPermissionV3ParamsWithHTTPClient creates a new AdminUpdateClientPermissionV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateClientPermissionV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateClientPermissionV3Params {
	var ()
	return &AdminUpdateClientPermissionV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateClientPermissionV3Params contains all the parameters to send to the API endpoint
for the admin update client permission v3 operation typically these are written to a http.Request
*/
type AdminUpdateClientPermissionV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.AccountcommonClientPermissionsV3
	/*ClientID
	  Client ID, should follow UUID version 4 without hypen

	*/
	ClientID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) WithTimeout(timeout time.Duration) *AdminUpdateClientPermissionV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) WithContext(ctx context.Context) *AdminUpdateClientPermissionV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) WithHTTPClient(client *http.Client) *AdminUpdateClientPermissionV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) WithBody(body *iamclientmodels.AccountcommonClientPermissionsV3) *AdminUpdateClientPermissionV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) SetBody(body *iamclientmodels.AccountcommonClientPermissionsV3) {
	o.Body = body
}

// WithClientID adds the clientID to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) WithClientID(clientID string) *AdminUpdateClientPermissionV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithNamespace adds the namespace to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) WithNamespace(namespace string) *AdminUpdateClientPermissionV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update client permission v3 params
func (o *AdminUpdateClientPermissionV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateClientPermissionV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
