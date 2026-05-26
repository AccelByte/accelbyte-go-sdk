// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_key_value

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewCreateKeyValueClusterV2Params creates a new CreateKeyValueClusterV2Params object
// with the default values initialized.
func NewCreateKeyValueClusterV2Params() *CreateKeyValueClusterV2Params {
	var ()
	return &CreateKeyValueClusterV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateKeyValueClusterV2ParamsWithTimeout creates a new CreateKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateKeyValueClusterV2ParamsWithTimeout(timeout time.Duration) *CreateKeyValueClusterV2Params {
	var ()
	return &CreateKeyValueClusterV2Params{

		timeout: timeout,
	}
}

// NewCreateKeyValueClusterV2ParamsWithContext creates a new CreateKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewCreateKeyValueClusterV2ParamsWithContext(ctx context.Context) *CreateKeyValueClusterV2Params {
	var ()
	return &CreateKeyValueClusterV2Params{

		Context: ctx,
	}
}

// NewCreateKeyValueClusterV2ParamsWithHTTPClient creates a new CreateKeyValueClusterV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateKeyValueClusterV2ParamsWithHTTPClient(client *http.Client) *CreateKeyValueClusterV2Params {
	var ()
	return &CreateKeyValueClusterV2Params{
		HTTPClient: client,
	}
}

/*CreateKeyValueClusterV2Params contains all the parameters to send to the API endpoint
for the create key value cluster v2 operation typically these are written to a http.Request
*/
type CreateKeyValueClusterV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.DomainKeyValueResourceConfiguration
	/*Namespace
	  Studio Name

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) WithTimeout(timeout time.Duration) *CreateKeyValueClusterV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) WithContext(ctx context.Context) *CreateKeyValueClusterV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) WithHTTPClient(client *http.Client) *CreateKeyValueClusterV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateKeyValueClusterV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) WithBody(body *csmclientmodels.DomainKeyValueResourceConfiguration) *CreateKeyValueClusterV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) SetBody(body *csmclientmodels.DomainKeyValueResourceConfiguration) {
	o.Body = body
}

// WithNamespace adds the namespace to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) WithNamespace(namespace string) *CreateKeyValueClusterV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create key value cluster v2 params
func (o *CreateKeyValueClusterV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateKeyValueClusterV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
