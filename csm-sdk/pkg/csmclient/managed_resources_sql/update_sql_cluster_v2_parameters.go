// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_sql

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

// NewUpdateSQLClusterV2Params creates a new UpdateSQLClusterV2Params object
// with the default values initialized.
func NewUpdateSQLClusterV2Params() *UpdateSQLClusterV2Params {
	var ()
	return &UpdateSQLClusterV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateSQLClusterV2ParamsWithTimeout creates a new UpdateSQLClusterV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateSQLClusterV2ParamsWithTimeout(timeout time.Duration) *UpdateSQLClusterV2Params {
	var ()
	return &UpdateSQLClusterV2Params{

		timeout: timeout,
	}
}

// NewUpdateSQLClusterV2ParamsWithContext creates a new UpdateSQLClusterV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateSQLClusterV2ParamsWithContext(ctx context.Context) *UpdateSQLClusterV2Params {
	var ()
	return &UpdateSQLClusterV2Params{

		Context: ctx,
	}
}

// NewUpdateSQLClusterV2ParamsWithHTTPClient creates a new UpdateSQLClusterV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateSQLClusterV2ParamsWithHTTPClient(client *http.Client) *UpdateSQLClusterV2Params {
	var ()
	return &UpdateSQLClusterV2Params{
		HTTPClient: client,
	}
}

/*UpdateSQLClusterV2Params contains all the parameters to send to the API endpoint
for the update sql cluster v2 operation typically these are written to a http.Request
*/
type UpdateSQLClusterV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.SqlresourceSQLResourceConfiguration
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

// WithTimeout adds the timeout to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) WithTimeout(timeout time.Duration) *UpdateSQLClusterV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) WithContext(ctx context.Context) *UpdateSQLClusterV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) WithHTTPClient(client *http.Client) *UpdateSQLClusterV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateSQLClusterV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) WithBody(body *csmclientmodels.SqlresourceSQLResourceConfiguration) *UpdateSQLClusterV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) SetBody(body *csmclientmodels.SqlresourceSQLResourceConfiguration) {
	o.Body = body
}

// WithNamespace adds the namespace to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) WithNamespace(namespace string) *UpdateSQLClusterV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update sql cluster v2 params
func (o *UpdateSQLClusterV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateSQLClusterV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
