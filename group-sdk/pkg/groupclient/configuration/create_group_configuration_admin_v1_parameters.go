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

// NewCreateGroupConfigurationAdminV1Params creates a new CreateGroupConfigurationAdminV1Params object
// with the default values initialized.
func NewCreateGroupConfigurationAdminV1Params() *CreateGroupConfigurationAdminV1Params {
	var ()
	return &CreateGroupConfigurationAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateGroupConfigurationAdminV1ParamsWithTimeout creates a new CreateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateGroupConfigurationAdminV1ParamsWithTimeout(timeout time.Duration) *CreateGroupConfigurationAdminV1Params {
	var ()
	return &CreateGroupConfigurationAdminV1Params{

		timeout: timeout,
	}
}

// NewCreateGroupConfigurationAdminV1ParamsWithContext creates a new CreateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewCreateGroupConfigurationAdminV1ParamsWithContext(ctx context.Context) *CreateGroupConfigurationAdminV1Params {
	var ()
	return &CreateGroupConfigurationAdminV1Params{

		Context: ctx,
	}
}

// NewCreateGroupConfigurationAdminV1ParamsWithHTTPClient creates a new CreateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateGroupConfigurationAdminV1ParamsWithHTTPClient(client *http.Client) *CreateGroupConfigurationAdminV1Params {
	var ()
	return &CreateGroupConfigurationAdminV1Params{
		HTTPClient: client,
	}
}

/*CreateGroupConfigurationAdminV1Params contains all the parameters to send to the API endpoint
for the create group configuration admin v1 operation typically these are written to a http.Request
*/
type CreateGroupConfigurationAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsCreateGroupConfigurationRequestV1
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) WithTimeout(timeout time.Duration) *CreateGroupConfigurationAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) WithContext(ctx context.Context) *CreateGroupConfigurationAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) WithHTTPClient(client *http.Client) *CreateGroupConfigurationAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) WithBody(body *groupclientmodels.ModelsCreateGroupConfigurationRequestV1) *CreateGroupConfigurationAdminV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) SetBody(body *groupclientmodels.ModelsCreateGroupConfigurationRequestV1) {
	o.Body = body
}

// WithNamespace adds the namespace to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) WithNamespace(namespace string) *CreateGroupConfigurationAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create group configuration admin v1 params
func (o *CreateGroupConfigurationAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateGroupConfigurationAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
