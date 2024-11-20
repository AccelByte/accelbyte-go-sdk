// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package images

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

// NewImageListParams creates a new ImageListParams object
// with the default values initialized.
func NewImageListParams() *ImageListParams {
	var (
		countDefault         = int64(100)
		offsetDefault        = int64(0)
		sortByDefault        = string("uploadedAt")
		sortDirectionDefault = string("desc")
	)
	return &ImageListParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewImageListParamsWithTimeout creates a new ImageListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImageListParamsWithTimeout(timeout time.Duration) *ImageListParams {
	var (
		countDefault         = int64(100)
		offsetDefault        = int64(0)
		sortByDefault        = string("uploadedAt")
		sortDirectionDefault = string("desc")
	)
	return &ImageListParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		timeout: timeout,
	}
}

// NewImageListParamsWithContext creates a new ImageListParams object
// with the default values initialized, and the ability to set a context for a request
func NewImageListParamsWithContext(ctx context.Context) *ImageListParams {
	var (
		countDefault         = int64(100)
		offsetDefault        = int64(0)
		sortByDefault        = string("uploadedAt")
		sortDirectionDefault = string("desc")
	)
	return &ImageListParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		Context: ctx,
	}
}

// NewImageListParamsWithHTTPClient creates a new ImageListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImageListParamsWithHTTPClient(client *http.Client) *ImageListParams {
	var (
		countDefault         = int64(100)
		offsetDefault        = int64(0)
		sortByDefault        = string("uploadedAt")
		sortDirectionDefault = string("desc")
	)
	return &ImageListParams{
		Count:         &countDefault,
		Offset:        &offsetDefault,
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,
		HTTPClient:    client,
	}
}

/*ImageListParams contains all the parameters to send to the API endpoint
for the image list operation typically these are written to a http.Request
*/
type ImageListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Count
	  the count of image list

	*/
	Count *int64
	/*InUse
	  the inUse filter

	*/
	InUse *string
	/*IsProtected
	  the image protected

	*/
	IsProtected *bool
	/*Name
	  the image name

	*/
	Name *string
	/*Offset
	  the offset of image list

	*/
	Offset *int64
	/*SortBy
	  the sortBy parameter specifies the attribute by which to sort the results

	*/
	SortBy *string
	/*SortDirection
	  the sort direction parameter

	*/
	SortDirection *string
	/*Status
	  the image status

	*/
	Status *string
	/*Tag
	  the image tag

	*/
	Tag *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the image list params
func (o *ImageListParams) WithTimeout(timeout time.Duration) *ImageListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the image list params
func (o *ImageListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the image list params
func (o *ImageListParams) WithContext(ctx context.Context) *ImageListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the image list params
func (o *ImageListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the image list params
func (o *ImageListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the image list params
func (o *ImageListParams) WithHTTPClient(client *http.Client) *ImageListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the image list params
func (o *ImageListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the image list params
func (o *ImageListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImageListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the image list params
func (o *ImageListParams) WithNamespace(namespace string) *ImageListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the image list params
func (o *ImageListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCount adds the count to the image list params
func (o *ImageListParams) WithCount(count *int64) *ImageListParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the image list params
func (o *ImageListParams) SetCount(count *int64) {
	o.Count = count
}

// WithInUse adds the inUse to the image list params
func (o *ImageListParams) WithInUse(inUse *string) *ImageListParams {
	o.SetInUse(inUse)
	return o
}

// SetInUse adds the inUse to the image list params
func (o *ImageListParams) SetInUse(inUse *string) {
	o.InUse = inUse
}

// WithIsProtected adds the isProtected to the image list params
func (o *ImageListParams) WithIsProtected(isProtected *bool) *ImageListParams {
	o.SetIsProtected(isProtected)
	return o
}

// SetIsProtected adds the isProtected to the image list params
func (o *ImageListParams) SetIsProtected(isProtected *bool) {
	o.IsProtected = isProtected
}

// WithName adds the name to the image list params
func (o *ImageListParams) WithName(name *string) *ImageListParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the image list params
func (o *ImageListParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the image list params
func (o *ImageListParams) WithOffset(offset *int64) *ImageListParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the image list params
func (o *ImageListParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the image list params
func (o *ImageListParams) WithSortBy(sortBy *string) *ImageListParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the image list params
func (o *ImageListParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithSortDirection adds the sortDirection to the image list params
func (o *ImageListParams) WithSortDirection(sortDirection *string) *ImageListParams {
	o.SetSortDirection(sortDirection)
	return o
}

// SetSortDirection adds the sortDirection to the image list params
func (o *ImageListParams) SetSortDirection(sortDirection *string) {
	o.SortDirection = sortDirection
}

// WithStatus adds the status to the image list params
func (o *ImageListParams) WithStatus(status *string) *ImageListParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the image list params
func (o *ImageListParams) SetStatus(status *string) {
	o.Status = status
}

// WithTag adds the tag to the image list params
func (o *ImageListParams) WithTag(tag *string) *ImageListParams {
	o.SetTag(tag)
	return o
}

// SetTag adds the tag to the image list params
func (o *ImageListParams) SetTag(tag *string) {
	o.Tag = tag
}

// WriteToRequest writes these params to a swagger request
func (o *ImageListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Count != nil {

		// query param count
		var qrCount int64
		if o.Count != nil {
			qrCount = *o.Count
		}
		qCount := swag.FormatInt64(qrCount)
		if qCount != "" {
			if err := r.SetQueryParam("count", qCount); err != nil {
				return err
			}
		}

	}

	if o.InUse != nil {

		// query param inUse
		var qrInUse string
		if o.InUse != nil {
			qrInUse = *o.InUse
		}
		qInUse := qrInUse
		if qInUse != "" {
			if err := r.SetQueryParam("inUse", qInUse); err != nil {
				return err
			}
		}

	}

	if o.IsProtected != nil {

		// query param isProtected
		var qrIsProtected bool
		if o.IsProtected != nil {
			qrIsProtected = *o.IsProtected
		}
		qIsProtected := swag.FormatBool(qrIsProtected)
		if qIsProtected != "" {
			if err := r.SetQueryParam("isProtected", qIsProtected); err != nil {
				return err
			}
		}

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

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

	}

	if o.SortDirection != nil {

		// query param sortDirection
		var qrSortDirection string
		if o.SortDirection != nil {
			qrSortDirection = *o.SortDirection
		}
		qSortDirection := qrSortDirection
		if qSortDirection != "" {
			if err := r.SetQueryParam("sortDirection", qSortDirection); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
				return err
			}
		}

	}

	if o.Tag != nil {

		// query param tag
		var qrTag string
		if o.Tag != nil {
			qrTag = *o.Tag
		}
		qTag := qrTag
		if qTag != "" {
			if err := r.SetQueryParam("tag", qTag); err != nil {
				return err
			}
		}

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
