// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

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

// NewGetListGroupByIDsAdminV2Params creates a new GetListGroupByIDsAdminV2Params object
// with the default values initialized.
func NewGetListGroupByIDsAdminV2Params() *GetListGroupByIDsAdminV2Params {
	var ()
	return &GetListGroupByIDsAdminV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetListGroupByIDsAdminV2ParamsWithTimeout creates a new GetListGroupByIDsAdminV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetListGroupByIDsAdminV2ParamsWithTimeout(timeout time.Duration) *GetListGroupByIDsAdminV2Params {
	var ()
	return &GetListGroupByIDsAdminV2Params{

		timeout: timeout,
	}
}

// NewGetListGroupByIDsAdminV2ParamsWithContext creates a new GetListGroupByIDsAdminV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetListGroupByIDsAdminV2ParamsWithContext(ctx context.Context) *GetListGroupByIDsAdminV2Params {
	var ()
	return &GetListGroupByIDsAdminV2Params{

		Context: ctx,
	}
}

// NewGetListGroupByIDsAdminV2ParamsWithHTTPClient creates a new GetListGroupByIDsAdminV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetListGroupByIDsAdminV2ParamsWithHTTPClient(client *http.Client) *GetListGroupByIDsAdminV2Params {
	var ()
	return &GetListGroupByIDsAdminV2Params{
		HTTPClient: client,
	}
}

/*GetListGroupByIDsAdminV2Params contains all the parameters to send to the API endpoint
for the get list group by i ds admin v2 operation typically these are written to a http.Request
*/
type GetListGroupByIDsAdminV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsGetGroupListRequestV2
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) WithTimeout(timeout time.Duration) *GetListGroupByIDsAdminV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) WithContext(ctx context.Context) *GetListGroupByIDsAdminV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) WithHTTPClient(client *http.Client) *GetListGroupByIDsAdminV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) WithBody(body *groupclientmodels.ModelsGetGroupListRequestV2) *GetListGroupByIDsAdminV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) SetBody(body *groupclientmodels.ModelsGetGroupListRequestV2) {
	o.Body = body
}

// WithNamespace adds the namespace to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) WithNamespace(namespace string) *GetListGroupByIDsAdminV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get list group by i ds admin v2 params
func (o *GetListGroupByIDsAdminV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetListGroupByIDsAdminV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
