// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// NewUpdateGroupConfigurationAdminV1Params creates a new UpdateGroupConfigurationAdminV1Params object
// with the default values initialized.
func NewUpdateGroupConfigurationAdminV1Params() *UpdateGroupConfigurationAdminV1Params {
	var ()
	return &UpdateGroupConfigurationAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateGroupConfigurationAdminV1ParamsWithTimeout creates a new UpdateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateGroupConfigurationAdminV1ParamsWithTimeout(timeout time.Duration) *UpdateGroupConfigurationAdminV1Params {
	var ()
	return &UpdateGroupConfigurationAdminV1Params{

		timeout: timeout,
	}
}

// NewUpdateGroupConfigurationAdminV1ParamsWithContext creates a new UpdateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateGroupConfigurationAdminV1ParamsWithContext(ctx context.Context) *UpdateGroupConfigurationAdminV1Params {
	var ()
	return &UpdateGroupConfigurationAdminV1Params{

		Context: ctx,
	}
}

// NewUpdateGroupConfigurationAdminV1ParamsWithHTTPClient creates a new UpdateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateGroupConfigurationAdminV1ParamsWithHTTPClient(client *http.Client) *UpdateGroupConfigurationAdminV1Params {
	var ()
	return &UpdateGroupConfigurationAdminV1Params{
		HTTPClient: client,
	}
}

/*UpdateGroupConfigurationAdminV1Params contains all the parameters to send to the API endpoint
for the update group configuration admin v1 operation typically these are written to a http.Request
*/
type UpdateGroupConfigurationAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsUpdateGroupConfigurationRequestV1
	/*ConfigurationCode
	  Group Configuration Code

	*/
	ConfigurationCode string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) WithTimeout(timeout time.Duration) *UpdateGroupConfigurationAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) WithContext(ctx context.Context) *UpdateGroupConfigurationAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) WithHTTPClient(client *http.Client) *UpdateGroupConfigurationAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) WithBody(body *groupclientmodels.ModelsUpdateGroupConfigurationRequestV1) *UpdateGroupConfigurationAdminV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) SetBody(body *groupclientmodels.ModelsUpdateGroupConfigurationRequestV1) {
	o.Body = body
}

// WithConfigurationCode adds the configurationCode to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) WithConfigurationCode(configurationCode string) *UpdateGroupConfigurationAdminV1Params {
	o.SetConfigurationCode(configurationCode)
	return o
}

// SetConfigurationCode adds the configurationCode to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) SetConfigurationCode(configurationCode string) {
	o.ConfigurationCode = configurationCode
}

// WithNamespace adds the namespace to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) WithNamespace(namespace string) *UpdateGroupConfigurationAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update group configuration admin v1 params
func (o *UpdateGroupConfigurationAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateGroupConfigurationAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param configurationCode
	if err := r.SetPathParam("configurationCode", o.ConfigurationCode); err != nil {
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
