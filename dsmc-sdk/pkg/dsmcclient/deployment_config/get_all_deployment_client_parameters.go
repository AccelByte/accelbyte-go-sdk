// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGetAllDeploymentClientParams creates a new GetAllDeploymentClientParams object
// with the default values initialized.
func NewGetAllDeploymentClientParams() *GetAllDeploymentClientParams {
	var ()
	return &GetAllDeploymentClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllDeploymentClientParamsWithTimeout creates a new GetAllDeploymentClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllDeploymentClientParamsWithTimeout(timeout time.Duration) *GetAllDeploymentClientParams {
	var ()
	return &GetAllDeploymentClientParams{

		timeout: timeout,
	}
}

// NewGetAllDeploymentClientParamsWithContext creates a new GetAllDeploymentClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllDeploymentClientParamsWithContext(ctx context.Context) *GetAllDeploymentClientParams {
	var ()
	return &GetAllDeploymentClientParams{

		Context: ctx,
	}
}

// NewGetAllDeploymentClientParamsWithHTTPClient creates a new GetAllDeploymentClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllDeploymentClientParamsWithHTTPClient(client *http.Client) *GetAllDeploymentClientParams {
	var ()
	return &GetAllDeploymentClientParams{
		HTTPClient: client,
	}
}

/*GetAllDeploymentClientParams contains all the parameters to send to the API endpoint
for the get all deployment client operation typically these are written to a http.Request
*/
type GetAllDeploymentClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Name
	  name of the deployment

	*/
	Name *string
	/*Count
	  how many items to return

	*/
	Count int64
	/*Offset
	  offset from list to query from

	*/
	Offset int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get all deployment client params
func (o *GetAllDeploymentClientParams) WithTimeout(timeout time.Duration) *GetAllDeploymentClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all deployment client params
func (o *GetAllDeploymentClientParams) WithContext(ctx context.Context) *GetAllDeploymentClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all deployment client params
func (o *GetAllDeploymentClientParams) WithHTTPClient(client *http.Client) *GetAllDeploymentClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get all deployment client params
func (o *GetAllDeploymentClientParams) WithNamespace(namespace string) *GetAllDeploymentClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithName adds the name to the get all deployment client params
func (o *GetAllDeploymentClientParams) WithName(name *string) *GetAllDeploymentClientParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetName(name *string) {
	o.Name = name
}

// WithCount adds the count to the get all deployment client params
func (o *GetAllDeploymentClientParams) WithCount(count int64) *GetAllDeploymentClientParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetCount(count int64) {
	o.Count = count
}

// WithOffset adds the offset to the get all deployment client params
func (o *GetAllDeploymentClientParams) WithOffset(offset int64) *GetAllDeploymentClientParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get all deployment client params
func (o *GetAllDeploymentClientParams) SetOffset(offset int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllDeploymentClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
				return err
			}
		}

	}

	// query param count
	qrCount := o.Count
	qCount := swag.FormatInt64(qrCount)
	if qCount != "" {
		if err := r.SetQueryParam("count", qCount); err != nil {
			return err
		}
	}

	// query param offset
	qrOffset := o.Offset
	qOffset := swag.FormatInt64(qrOffset)
	if qOffset != "" {
		if err := r.SetQueryParam("offset", qOffset); err != nil {
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
